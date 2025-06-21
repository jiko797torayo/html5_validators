# frozen_string_literal: true

require 'test_helper'

class WithoutModelTest < ActionDispatch::IntegrationTest
  if Rails::VERSION::STRING >= '5.1'
    sub_test_case 'without model' do
      test 'form_with' do
        visit '/search'
        assert page.has_css? '#form_with input#query'
      end
    end
  end
end
