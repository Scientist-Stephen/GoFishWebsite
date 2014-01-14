require '../../FISHGAME/go_fish_app'

require 'spinach/capybara'
Spinach::FeatureSteps.send(:include, Spinach::FeatureSteps::Capybara)
Capybara.app = Sinatra::Application