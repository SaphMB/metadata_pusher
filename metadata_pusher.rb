class MetadataPusher
    attr_reader :metadata_folder, :picture_folder
    
    def initialize(metadata_folder, picture_folder)
        @metadata_folder = metadata_folder
        @picture_folder = picture_folder
    end
    
    def metadata_files
        Dir.entries(metadata_folder).select {|file| file.start_with?("photo_") }
    end

end