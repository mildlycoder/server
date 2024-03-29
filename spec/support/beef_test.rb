#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
require 'test/unit'

require 'capybara'
require 'capybara/rspec'
Capybara.run_server = false # we need to run our own BeEF server

require 'selenium-webdriver'

class BeefTest
  def self.save_screenshot(session)
    Dir.mkdir(BEEF_TEST_DIR) unless File.directory?(BEEF_TEST_DIR)
    session.driver.browser.save_screenshot(BEEF_TEST_DIR + Time.now.strftime('%Y-%m-%d--%H-%M-%S-%N') + '.png')
  end

  def self.login(session = nil)
    session = Capybara::Session.new(:selenium_headless) if session.nil?
    session.visit(ATTACK_URL)
    sleep 2.0
    session.has_content?('BeEF Authentication')
    session.fill_in 'user', with: BEEF_USER
    session.fill_in 'pass', with: BEEF_PASSWD
    session.click_button('Login')
    sleep 10.0

    session
  end

  def self.logout(session)
    session.click_link('Logout')

    session
  end

  def self.new_attacker
    self.login
  end

  def self.new_victim
    victim = Capybara::Session.new(:selenium_headless)
    victim.visit(VICTIM_URL)
    victim
  end
end
