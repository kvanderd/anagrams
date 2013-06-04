get '/' do
  # Look in app/views/index.erb
  erb :index
end

post "/user_word" do
  @word = params[:word]
  redirect "/#{@word}"
end


get "/:word" do | word |
  final = []
  @user_sorted_word = word.downcase.split("").sort.join
  Word.all.each do |word|
    if word.sorted_word == @user_sorted_word
       final << word.original_word
    end
  end
   @final = final.inspect
erb :anagrams
end


# get the user wo
