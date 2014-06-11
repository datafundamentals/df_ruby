require 'serverspec' 
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe command('ruby -v') do 
	it { should return_stdout 'ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-linux]'}