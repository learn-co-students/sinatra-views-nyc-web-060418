class User

attr_reader :username, #:tweets (removed to sync sources of truth)  #am i going to need to access this from outsie the class?  Yes, usually. just creating a reader for now

  def initialize(user_name)           #tweets stored in instance.  Each instance can keep track of its information - User keeps track of own user name and tweets array.  Seperates the data out, and keeps track in instances.
    @user_name = user_name
    #tweets = []                       #array to tweets, to hold between 0 and infinity.  Array.length = # tweets
  end

  def tweets                        #use select - to return tweets from certain user.
      Tweet.all.select do |tweet|
      tweet.user == self            #looks to unique ID of the instance.  yes = true, if not, it will break
    end                             #just want to return true or false.  Cant do tweet.user_name, only tweet.user
  end                               #making sure tweets show for specific user

end
