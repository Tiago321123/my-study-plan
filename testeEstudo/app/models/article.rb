class Article < ApplicationRecord
    #  Validations are rules that are checked before a model object is saved. If any of the checks fail, the save will be aborted, and appropriate error messages will be added to the errors attribute of the model object.
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
