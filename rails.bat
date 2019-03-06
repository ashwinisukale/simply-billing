@echo off

E:

cd Simply-Bill

export SECRET_KEY_BASE=59903419f852831db677bcf0ed07c57cbcc404df0364e20d1aadda14622c7a23a8601e72022dbec9c9b2bd5252331f63e1dd055ce251318a575d3ac47b877420
start RAILS_ENV=production rails s