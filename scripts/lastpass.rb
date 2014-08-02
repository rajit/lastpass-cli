#!/usr/bin/env ruby

require "lastpass"

site = ARGV.shift
vault = LastPass::Vault.open_remote ENV['LASTPASS_USER'], ENV['LASTPASS_PASSWORD']
accounts = vault.accounts
if site then
    found = accounts.find_index do |i|
        i.name.include? site
    end
    if found then
        print accounts[found].password
    else
        STDERR.puts "Couldn't find entry matching '#{site}'"
    end
else
    accounts.each do |i|
        puts "#{i.name}"
    end
end
