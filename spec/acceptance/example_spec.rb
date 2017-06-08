require 'spec_helper_acceptance'

describe 'example scenario' do
  context 'default' do
    it 'applies manifest without error' do
      pp = <<-EOS
        include example 
      EOS

      apply_manifest(pp, :catch_failures => true, :acceptable_exit_codes => [0, 2])

      # Novamente para verificar que não houve mudanças e nosso código é idempotente
      expect(apply_manifest(pp, :catch_failures => true).exit_code).to be_zero
    end

    describe service('httpd') do
      it { should be_enabled }
      it { should be_running }
    end

    describe port(80) do
      it { should be_listening }
    end

  end
end
