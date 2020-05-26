note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class TIDY_NODE_STRUCT_API

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

feature {NONE} -- Implementation wrapper for struct struct _TidyNode

	sizeof_external: INTEGER
		external
			"C inline use <tidy.h>"
		alias
			"sizeof(struct _TidyNode)"
		end

	c_opaque (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <tidy.h>"
		alias
			"[
				((TidyNode)$an_item)->_opaque
			]"
		end

end
