# frozen_string_literal: true

require 'test_plugin_helper'

module Host
  class ManagedTest < ActiveSupport::TestCase
    include ForemanBootdiskTestHelper

    setup do
      User.current = users(:admin)
      setup_bootdisk
    end

    context 'with host' do
      let(:host) { FactoryBot.create(:host, :managed, :with_subnet, build: true) }

      test 'finds the bootdisk_template specified in settings' do
        assert_kind_of ProvisioningTemplate, host.bootdisk_template
      end

      test 'renders the host bootdisk template' do
        assert_includes host.bootdisk_template_render, 'loop_success'
      end

      test 'does not render VLAN configuration when subnet has no VLAN ID' do
        rendered = host.bootdisk_template_render
        assert_not_includes rendered, 'vcreate'
      end
    end

    context 'with host on a VLAN-tagged subnet' do
      let(:subnet) { FactoryBot.create(:subnet_ipv4, gateway: '10.0.1.254', dns_primary: '8.8.8.8', vlanid: 100) }
      let(:host) { FactoryBot.create(:host, :managed, subnet: subnet, ip: subnet.network.sub(/0$/, '4'), build: true) }

      test 'renders vcreate for the VLAN tag' do
        assert_includes host.bootdisk_template_render, 'vcreate --tag 100 net${idx}'
      end

      test 'renders ifopen for the VLAN interface' do
        assert_includes host.bootdisk_template_render, 'ifopen net${idx}-100'
      end
    end
  end
end
