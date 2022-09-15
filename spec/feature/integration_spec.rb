require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid title' do
        visit new_book_path
        fill_in 'book[title]', with: 'harry potter'
        fill_in 'book[author]', with: 'JK Rowling'
        fill_in 'book[price]', with: 15.50
        fill_in "book[published_date]", with: "2014/01/01"
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end

    scenario 'valid author' do
        visit new_book_path
        fill_in 'book[title]', with: 'harry potter'
        fill_in 'book[author]', with: 'JK Rowling'
        fill_in 'book[price]', with: 15.50
        fill_in "book[published_date]", with: "2014/01/01"
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('JK Rowling')
    end

    scenario 'valid price' do
        visit new_book_path
        fill_in 'book[title]', with: 'harry potter'
        fill_in 'book[author]', with: 'JK Rowling'
        fill_in 'book[price]', with: 15.50
        fill_in "book[published_date]", with: "2014/01/01"
        click_on 'Create Book'
        click_on 'harry potter'
        expect(page).to have_content('15.50')
    end

    scenario 'valid published date' do
        visit new_book_path
        fill_in 'book[title]', with: 'harry potter'
        fill_in 'book[author]', with: 'JK Rowling'
        fill_in 'book[price]', with: 15.50
        fill_in "book[published_date]", with: "2014/01/01"
        click_on 'Create Book'
        click_on 'harry potter'
        expect(page).to have_content('2014-01-01')
    end
end