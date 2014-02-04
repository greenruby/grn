class Api::EditionsController < ApplicationController

  def index
    @editions = Edition.all
    render json: @editions, each_serializer: EditionsListSerializer
  end

  def show
    @edition = Edition.includes({
      edition_categories:
        [ :category,
          { items:
            [ :maintag,
              { tag_items: :tags
              }
            ]
          }
        ]
      }
    ).where(title: params[:title])
    #@edition = Edition.order(:pubdate).last unless @edition
    render json: @edition
  end

end
