@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-6">
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="text-center">Megye</h3>
                            </div>
                            <div class="card-body">
                                <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="counties">
                                    <option selected disabled>Válassz kategóriát</option>
                                        @foreach($counties as $county)
                                            <option value="{{$county->id}}">{{$county->name}}</option>
                                        @endforeach
                                </select>
                            </div>
                          </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12 col-lg-12">
                        <div id="add-new-city" class="d-none text-center">
                            <div class="card">
                                <h3 class="card-header">Új város</h3>
                                <div class="card-body">
                                  <form id="insertForm">
                                    <div class="mb-3">
                                        <input type="text" class="form-control form-control-lg" placeholder="Város neve" min="1" max="60" id="new-city-name" name="new_city_name" autocomplete="off" required>
                                    </div>
                                    <button type="submit" class="btn btn-primary" id="add-new-city-submit">Felvesz</button>
                                  </form>
                                </div>
                              </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="col-12 col-lg-6 d-flex justify-content-center d-none mt-5 mt-lg-0" id="card-cities">
                <div class="card">
                    <h3 class="card-header text-center" id="card-county-name"></h3>
                    <div class="card-body d-flex align-items-center flex-column mb-5">
                        <img class="mb-5" id="card-county-img">
                        <div id="show" class="d-flex align-items-center flex-column text-center"></div>
                    </div>
                  </div>
            </div>
        </div>
    </div>
  
       <!-- Modal -->
    <div class="modal fade" id="cityModal" tabindex="-1" aria-labelledby="cityModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="cityModalLabel">Város módosítása</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Város neve: </label>
                    <input type="text" id="actual_city" class="form-control">
                </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="cityId">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Mégse</button>
                <button type="button" id="delete" class="btn btn-danger">Törlés</button>
                <button type="button" id="update" class="btn btn-success">Módosít</button>
            </div>
        </div>
        </div>
    </div>

<script>  
 
    $.ajaxSetup({
    headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    document.getElementById("counties").addEventListener("change",function(e){
       
        $('.cities').remove();   
        let county_id = $(this).val();

        if(county_id.length != 0){
            $("#card-cities").removeClass('d-none'); 
            $("#add-new-city").removeClass('d-none'); 
        }

        $.ajax({
            url: '{{route('select')}}',
            type: "post",
            data:{county_id:county_id},
            success: function(data){ 
            
                for(let i=0; i<data.length; i++){

                    let div = document.createElement("div");
                    let card_name = document.getElementById("card-county-name");
                    let card_img = document.getElementById("card-county-img")

                    div.className = "cities mb-2";
                    div.setAttribute("id", data[i]["id"]);
                    div.setAttribute("value", data[i]["name"]);
                    div.innerHTML = data[i]["name"];
                    card_name.innerHTML = data[i]["county"]["name"] + " Megye";
                    card_img.setAttribute("src", data[i]["county"]["image"]);
                    document.getElementById('show').appendChild(div);
                    
                }
            } 
        });
    });

    $(document).ready(function(){
        $(document).on('click', 'div[class="cities mb-2"]',function(){
            let id = $(this).attr('id');
            let actual_city = $("#"+id).text();
            
            $("#actual_city").val(actual_city);
            $("#cityId").val(id);
            $("#cityModal").modal("toggle");
        })
    })

    document.getElementById("update").addEventListener("click",function(){
      
        let id = $("#cityId").val();
        let actual_city = $("#actual_city").val();
    
        $.ajax({
            url: '{{route('update')}}',
            method: 'post',
            data: {id:id, name: actual_city},
            success: function(data){
                document.getElementById(id).value = data["name"];
                document.getElementById(id).innerHTML = data["name"];
                $("#cityModal").modal('toggle');
            }
        });
    });

    document.getElementById("delete").addEventListener("click",function(){
      
      let id = $("#cityId").val();

      $.ajax({
          url: '{{route('delete')}}',
          method: 'post',
          data: {id:id},
          success: function(data){

            let actual_div = document.getElementById(id);
            actual_div.remove();
            $("#cityModal").modal('toggle');

          }
        });
    });

    $("#insertForm").submit(function(e) {
            
        let new_city_name = document.getElementById('new-city-name').value;
        let county_id = document.getElementById('counties').value;
        e.preventDefault(); 

        $.ajax({
            url: '{{route('store')}}',
            type: "post",
            data:{county_id:county_id,
                name:new_city_name},
            success: function(data){

                // a beszúrt itemnek készitünk egy új divet amit hozzáfűzünk a többihez.
                let div = document.createElement("div");
                div.className = "cities mb-2";
                div.setAttribute("value", data["name"]);
                div.setAttribute("id", data["id"]); 
                div.innerHTML = data["name"];   
                document.getElementById('show').appendChild(div);
                
                document.getElementById("insertForm").reset();
            }
        });
    });
   
</script>
@endsection