terrain_category=0  # 0 = Sea or coastal area
                    # 1 = Open countryside
                    # 2 = Countryside with hedges; vineyards; bocage; scattered habitat.
                    # 3 = Urbanized or industrial areas; dense bocage; orchards
                    # 4 = Urban areas

wind_magnitude=2.0  # [m/s]
wind_direction=360  # [deg]
wind_elevation=10   # [deg]

echo "Terrain category selected as ${terrain_category}"

echo "Emulating wind:"
echo "Mean magnitude: ${wind_magnitude} m/s"
sphinx-cli param -m world wind magnitude_expr ${wind_magnitude}*(1+0.05*sin(2*pi*time/30))

echo "Mean wind direction: ${wind_direction} degrees"
sphinx-cli param -m world wind direction_expr ${wind_direction}
sphinx-cli param -m world wind direction_expr "0.1*noise()"

