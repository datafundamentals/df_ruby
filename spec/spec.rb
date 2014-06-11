require 'chefspec'

describe 'df_ruby::default' do 
	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
	
	it 'should set path to point to ruby' do 
		expect(chef_run).to create_file('/etc/profile.d/ruby.sh')
	end
end

