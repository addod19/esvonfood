# module Searchable
#   extend ActiveSupport::Concern

#   # include do
#   include Elasticsearch::Model
#   include Elasticsearch::Model::Calbacks

#     def as_indexed_json(_options = {})
#         as_json(only: %i[name categorys])
#     end

#     settings settings_attributes do
#         mappings dynamic: false do
#         indexes :name, type: :text, analyzer: :autocomplete
#         indexes :category, type: :keyword
#         indexes :description, type: :text
#         indexes :price, type: :float
#         end
#     end

#     def self.search(query, filters)
#         set_filters = lambda do |context_type, filter|
#         @search_definition[:query][:bool][context_type] |= [filter]
#     end

#     @search_definition = {
#       size: 5,
#       query: {
#         bool: {
#           must: [],
#           should: [],
#           filter: []
#         }
#       }
#     }

#     if query.blank?
#       set_filters.call(:must, match_all: {})
#     else
#       set_filters.call(
#         :must,
#         match: {
#           name: {
#             query: query,
#             fuzziness: 1
#           }
#         }
#       )
#     end

#     if filters[:level].present?
#       set_filters.call(:filter, term: { category: filters[:category] })
#     end

#   # end

#   # class_methods do
#   #   def settings_attributes
#   #     {
#   #       index: {
#   #         analysis: {
#   #           analyzer: {
#   #             autocomplete: {
#   #               type: :custom,
#   #               tokenizer: :standard,
#   #               filter: %i[lowercase autocomplete]
#   #             }
#   #           },
#   #           filter: {
#   #             autocomplete: {
#   #               type: :edge_ngram,
#   #               min_gram: 2,
#   #               max_gram: 25
#   #             }
#   #           }
#   #         }
#   #       }
#   #     }
#   #   end
#   # end

#   # __elasticsearch__.search(@search_definition)