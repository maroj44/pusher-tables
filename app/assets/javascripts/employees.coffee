	# Place all the behaviors and hooks related to the matching controller here.
	# All this logic will automatically be available in application.js.
	# You can use CoffeeScript in this file: http://coffeescript.org/
	updateTable = (data) ->
		$('#employee-table tbody').append """
			<tr>
				<td>#{data.name}</td>
				<td>#{data.position}</td>
				<td>#{data.office}</td>
				<td>#{data.extension}</td>
				<td>#{data.start_date}</td>
				<td><a href="/employees/#{data.id}">Show</a></td>
				<td><a href="/employees/#{data.id}/edit">Edit</a></td>
				<td><a data-confirm="Are you sure?" rel="nofollow" data-method="delete" href="/employees/#{data.id}">Delete</a></td>
			</tr>
		"""
		return

	$ ->
		$('#add_employee').on 'ajax:success', (data) ->
			$('#add_employee')[0].reset()
			updateTable data.detail[0]
			return
		return