if Meteor.isClient

    Template.home.onRendered ->

        # Urusan Peta 1
        latar = L.tileLayer.provider 'OpenTopoMap'

        map = L.map 'peta1',
            center: [0, 0]
            zoom: 1
            layers: [latar]
            

        titik = L.marker [0.5, 101.44]
        titik.addTo map
        
        dataGaris = [
            type: 'LineString'
            coordinates: [[-100, 40], [-105, 45], [-110, 55]]
        ,
            type: 'LineString'
            coordinates: [[-105, 40], [-110, 45], [-115, 55]]
        ]

        gayaGaris =
            color: 'orange'
            weight: 5
            opacity: 0.5

        garis = L.geoJSON dataGaris,
            style: gayaGaris

        garis.addTo map


        # Urusan Peta 2, 3, 4, 5, 6
        latar2 = L.tileLayer.provider 'OpenStreetMap.DE'
        map2 = L.map 'peta2',
            center: [0, 0]
            zoom: 1
            layers: [latar2]
        
        latar3 = L.tileLayer.provider 'OpenStreetMap.DE'
        map3 = L.map 'peta3',
            center: [0, 0]
            zoom: 1
            layers: [latar3]

        latar4 = L.tileLayer.provider 'OpenStreetMap.DE'
        map4 = L.map 'peta4',
            center: [0, 0]
            zoom: 1
            layers: [latar4]

        latar5 = L.tileLayer.provider 'OpenStreetMap.DE'
        map5 = L.map 'peta5',
            center: [0, 0]
            zoom: 1
            layers: [latar5]

        latar6 = L.tileLayer.provider 'OpenStreetMap.DE'
        map6 = L.map 'peta6',
            center: [0, 0]
            zoom: 1
            layers: [latar6]
