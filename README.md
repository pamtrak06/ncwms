# ncwms
wms for netcdf

See usage from http://www.resc.rdg.ac.uk/trac/ncWMS/wiki/DownloadPage
```
docker run --name gribapi_1 -v $PWD/data:/data pamtrak06/gribapi 

docker run --name ncwms_1 -p 32768:8080 --volumes-from gribapi_1 -v $PWD/data:/data pamtrak06/ncwms 
```

Download example of netcdf dataset in data/, by example :
```
wget wget ftp://ftp.cdc.noaa.gov/Datasets/udel.airt.precip/precip.mon.total.v401.nc
```

Open url : http://192.168.99.100:32768/ncWMS/admin/ user:admin, password:ncWMS

"You can enter up to three new datasets at a time. To add more than three, you must click "Save Configuration", then you can add more. If you have a sequence of OPeNDAP URLs that you'd like to view as a single dataset in ncWMS, construct an NcML aggregation for these URLs or see the FrequentlyAskedQuestions.

Click "Save Configuration". The metadata from these datasets will be harvested. If all goes well, the State of each dataset will change to READY (you'll need to refresh your browser). If the State shows ERROR, click on the word ERROR and see if the problem is something obvious, like a mistyped file location."

...

"Upon loading a dataset, ncWMS will automatically harvest metadata required for displaying its variables. It will automatically select a title (display name) for each variable, and choose a default colour scale range and palette. These can be overridden if required. On the admin page click on "edit" in the "Edit variables" column for a dataset. You will be presented with a page that allows you to edit the attributes of the variables in the dataset, including the title, the default colour scale range (i.e. the range of values used at the extremes of the colour scale), the default palette and default scale spacing (linear or logarithmic). These values are saved to the configuration file (see below) so they persist between server reboots."

Source : http://www.resc.rdg.ac.uk/trac/ncWMS/wiki/DownloadPage
