note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class TIDY_LOCALE_MAP_ITEM_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	opaque: INTEGER
			-- Access member `_opaque`
		require
			exists: exists
		do
			Result := c_opaque (item)
		ensure
			result_correct: Result = c_opaque (item)
		end

	set_opaque (a_value: INTEGER) 
			-- Change the value of member `_opaque` to `a_value`.
		require
			exists: exists
		do
			set_c_opaque (item, a_value)
		ensure
			opaque_set: a_value = opaque
		end

feature {NONE} -- Implementation wrapper for struct struct _tidyLocaleMapItem

	sizeof_external: INTEGER 
		external
			"C inline use <eif_tidy.h>"
		alias
			"sizeof(struct _tidyLocaleMapItem)"
		end

	c_opaque (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_tidy.h>"
		alias
			"[
				((tidyLocaleMapItem)$an_item)->_opaque
			]"
		end

	set_c_opaque (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_tidy.h>"
		alias
			"[
				((tidyLocaleMapItem)$an_item)->_opaque =  (int)$a_value
			]"
		ensure
			opaque_set: a_value = c_opaque (an_item)
		end

end
