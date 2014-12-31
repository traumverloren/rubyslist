# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

community_category = Category.where(name: 'community').first_or_create(name: 'community')
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
personals_category = Category.where(name: 'personals').first_or_create(name: 'personals')
services_category = Category.where(name: 'services').first_or_create(name: 'services')
for_sale_category = Category.where(name: 'for sale').first_or_create(name: 'for sale')


Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)

Subcategory.where(name: 'strictly platonic', category_id: personals_category.id).first_or_create(name: 'strictly platonic', category_id: personals_category.id)
Subcategory.where(name: 'missed connections', category_id: personals_category.id).first_or_create(name: 'missed connections', category_id: personals_category.id)

Subcategory.where(name: 'flats/housing', category_id: housing_category.id).first_or_create(name: 'flats/housing', category_id: housing_category.id)

Subcategory.where(name: 'holiday rentals', category_id: housing_category.id).first_or_create(name: 'holiday rentals', category_id: housing_category.id)

Subcategory.where(name: 'free', category_id: for_sale_category.id).first_or_create(name: 'free', category_id: for_sale_category.id)

Subcategory.where(name: 'furniture', category_id: for_sale_category.id).first_or_create(name: 'furniture', category_id: for_sale_category.id)


Subcategory.where(name: 'beauty', category_id: services_category.id).first_or_create(name: 'beauty', category_id: services_category.id)


Subcategory.where(name: 'cars/automotive', category_id: services_category.id).first_or_create(name: 'cars/automotive', category_id: services_category.id)


Subcategory.where(name: 'biotech/science', category_id: jobs_category.id).first_or_create(name: 'biotech/science', category_id: jobs_category.id)

Subcategory.where(name: 'business/mgmt', category_id: jobs_category.id).first_or_create(name: 'business/mgmt', category_id: jobs_category.id)
