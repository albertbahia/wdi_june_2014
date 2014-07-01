class PlaylistsController < ApplicationController

		# index
	def index
	  @playlists = Playlist.all
	end

	# new
	def new
	  # erb(:"playlists/new")
	end

	# create
	def create
	  @playlist = Playlist.create!(params[:playlist].permit!)
	  redirect("/playlists/#{@playlist.id}")
	end

	# new
	def show
	  @playlist = Playlist.find(params[:id])
	  # erb(:"playlists/show")
	end

	# add song
	def add_song
	  @playlist = Playlist.find(params[:id])
	  @playlist.songs << Song.find(params[:song_id])
	  redirect("/playlists/#{@playlist.id}")
	end

	# remove song
	def remove_song
	  @playlist = Playlist.find(params[:id])
	  @playlist.songs.delete(Song.find(params[:song_id]))
	  redirect("/playlists/#{@playlist.id}")
	end

end