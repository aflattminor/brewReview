require 'rails_helper'

RSpec.describe Brewpub, type: :model do
  it { should have_valid(:name).when('Yards', '2nd Story')}
  it { should_not have_valid(:name).when(nil, '', )}
  it { should have_valid(:address).when('123 test street', 'First street')}
  it { should_not have_valid(:address).when(nil, '', )}
  it { should have_valid(:city).when('Philadelphia', 'Fishtown')}
  it { should_not have_valid(:city).when(nil, '', )}
  it { should have_valid(:state).when('PA', 'DE')}
  it { should_not have_valid(:state).when(nil, '', )}
  it { should have_valid(:zip).when('19147', '12345-1234')}
  it { should_not have_valid(:zip).when(nil, '', '123', '12345-12')}
  it { should have_valid(:description).when('blah blah blah')}
  it { should_not have_valid(:description).when(nil, '')}
  it { should have_valid(:website_url).when('www.wdqwdqwd.com', 'qwdqwd.com', 'http://wefqef.com', 'http://www.qqwdqwqw.com')}
  it { should_not have_valid(:website_url).when(nil, '')}
  it { should have_valid(:img_url).when('www.wdqwdqwd.com', 'qwdqwd.com', 'http://wefqef.com', 'http://www.qqwdqwqw.com')}
  it { should_not have_valid(:img_url).when(nil, '')}
  it { should have_valid(:logo_url).when('www.wdqwdqwd.com', 'qwdqwd.com', 'http://wefqef.com', 'http://www.qqwdqwqw.com')}
  it { should_not have_valid(:logo_url).when(nil, '')}
  it { should have_valid(:phone_number).when('191-173-2983')}
  it { should_not have_valid(:phone_number).when(nil, '', '123', '123-122-134', '123-293', '12-3421')}
  it { should have_valid(:contact_email).when('blahblah@blah.com')}
  it { should_not have_valid(:contact_email).when(nil, '', 'qwdqwdqw.com')}
end
