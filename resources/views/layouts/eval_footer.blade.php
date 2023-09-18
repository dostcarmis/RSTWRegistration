<?

?>    
    <div id="footer">
        <div class="container clearfix">
            <img src="{{ asset('images/dost_footer.png') }}" class="img-responsive pull-right" alt="DOST4A">            
            <br>
            <h4 class="text-warning">Total No of Registrants :  {{ ''.\App\VWRegistrant::first()->vis_count }} </h4>
        </div>
    </div>

    <script src="{{ asset('js/jquery-2.1.3.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap-datepicker.min.js') }}"></script>
    <script src="{{ asset('js/jquery.tablesorter.min.js') }}"></script>
    <script src="{{ asset('js/jquery.tablesorter.pager.js') }}"></script>
    <script src="{{ asset('js/chosen.jquery.min.js') }}"></script>
    <script src="{{ asset('js/custom.js') }}"></script>
</body>
</html>