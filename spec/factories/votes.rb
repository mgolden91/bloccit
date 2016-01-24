

FactoryGirl.define do
  factory :vote do
    value 1
    post
    user
  end
end

# 1) Vote update_post callback #update_post should call update_rank on post
#     Failure/Error: expect(post).to receive(:update_rank).at_least(:once)
#
#       (#<Post:0x007fc9187c23e0>).update_rank(*(any args))
#           expected: at least 1 time with any arguments
#           received: 0 times with any arguments
#     # ./spec/models/vote_spec.rb:25:in `block (3 levels) in <top (required)>'
