require 'serverspec' 
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe command('ruby -v') do 
	it { should return_stdout 'ruby 1.9.3p484'}