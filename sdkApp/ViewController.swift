//  ViewController.swift
//  sdkApp
//  Created by CS on 22/03/23.

import UIKit
import iPass_SDK

class ViewController: UIViewController {
    
    // MARK: - Variables
    var imgData = "iVBORw0KGgoAAAANSUhEUgAAAoQAAAHgCAYAAAA8OnyeAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAP+lSURBVHhenP13mKXpWd6L7j98bZ9ts4/x9jG2ARuwSCaDhIgi22BAAhFEEAjlgIRylkYS0iTNaHKenunpnFN1V1fOOadVYeVcK1WtCqtqVe5+zu9+vhmMr+vs65jdYtHTK3xvesL9xPd/u3v3rul1eOfIlsslGxobtfXtVTu6u8d7B3bn7pEdHm7ZxnrGajtp2z9Ys53dbdvf37e19aJtbGUsX5y3rXrJyispO7qzxWe7tnuwYTv7G7Z/uGcHR3d4/y7PPLTDo21b3yjzqtjBwY4dHR3aweGh1XfXbXamyebnmiyTHrf63hrv79jOXsWWYr02M9/MOHOWX47a1t6m1fbKtrnD+My1ulm1vcN9u8Maju7sMMdN29uv2d5enf/eYw0HvM96GHtmvscuXX/MxqaamHORuW7Z+mbewokea+1+0WYW9H6Zee0w7w3b3i3Y6lrc8oUI+7DDXh3x2vdn6Zm7u7s8Y4/v7/pLa9k92LW1zYLNLQ1aLD1p9YOKrW0sW2172Sam262l/ZwthEdsY7PEXq9YYSVhkcS09Q61WDw7ZXsHZZ6zyt6tMf91296psOcVzmOF1yb7Vmetezxv1eaXRq1nsMkS6Zit16qMW7RYKmSzC0M2PN5hfUOttskY+6ynvlfjO2m+k+aZRea/yYt1HHFmjFXbLlixEuacan4uu5zj5nbFEpkZ6+q/bpHkhIXjU7bJmW/t5CyVm7T+4as2OHqZMxqw1Y2I5UvTVqtnbWyix2LxGebPsziTPfa5ulax9o4WXo2WTC+wb3U72Icm2LPVas7Gp27bUmTQRkbbLRIdt+VCyFZWw7YQ6bGJ2SZbjPZYrjDD+FlbWUtaKj9jzR2Xra3rBuup+hoP726z3yUbnW62oYkGy5dDtlkvMM6B1bZWLJ2dZ4xx/3t1nb3Yyvvn23urVqgkbCHKuWyloIkMtAdtbWTZ20nLLE+yxiEbGeu0ZDJi9Z0Vq6wtWFPHCRuevG1FznBrr2Qb9YxFU5N27tKj9srph5h7P3uVt5Vq3OeczYdsdOK2zS42s69DjJW1ZHzUxkYv2eVr37BQ+Aa8sGy5fMJyxZRll2N8v8d6+5ptfb1g9foa80xbrrRkKxtJm4+M2WJsjD0vwm8l1pK00uoc73dbaWWe/T/iefvQ1L5Vqst+huevPmEf+rs/sWs3zluecW63XLKHHvmSTU73w5er0N4+Z7bLfhXZ73kbnL5uifysldZytgJdr8MfFfZlaLLNlpJTtrZdttruBq8taKbGc3rtdutZa2o7C71l4R/WmJuz81desP6RNniqxr6usPYq+75my5WojU61wXv9tlbLw8859pG/t5J8tgTNzUCXGXgow/OS/C5uFy4/Z88+/7Blcimet2U78MnYdIcNTty0kelGy1dmbGt/OTjfnQLjT9rAmGiVtaRmOd+CFcoRaGjQ2gdesNlwoxWrS5zJgq0g6xbjQ3b/t95vV28+Y9lc2DZqFVsuRmxythk67LKJmVZbLoXY4zB7FILXu+1a40t238Of4zenLFtcgvYilkE2Xr31on3lvg/YsVMP8OxEQHurMRtmPg8+8nGbCrUz70aLss5TZ5+GbxttBBoZnWi1eDIEnRbYl5wlchO2AJ/NLQ1YQ8Npi0enLLe8aCn4c3auy243HreegcsWWuqBl9psYPimXb7+rL188iHeG4cWJ6yz9ya0N2TxzLSNz3TaK+eetdG5YVtILth8bIp1j1sY3mvvbODvWZ69iIwZ4vfdNjLZYC0dZ2x8tt15Zm27CI8127krz/m57SP7j+7uQH85W4zMwAdT1tJ12i5ef8p6hq7ZLPOemO3lOW3w7RU7f/klu9F02rr6riOPm9nbJuZ3xk6cedieePprzP0Za2x9yV46ea+9dOKbVuVctpBl1bVlWwyP2+BwM7x/0V546T47feaYdXQ18MwX7MqtY9aFXHr25Xvt3oc/ZW3dV/leA+N22Vy4B1l2xk6eecBuN79i45MtNjrWZo23z1lqeZr5b6Mv7vIyaHnHRif7rKHpjN33zS/ao0/eZzebLtrVhlPW2XPFGltO2HPHvm5PPP8lO37uAbvR+oI1t5+wYye+bl/5xnvta/f+LXP7pj3zAq+X77PnXvka43fDixXXMSMTXdY33GCT8032yDOfssef+5ydvvQt5Ey/RZODNj3fajebX7QXXvkKn33GTl540BqYc8/gDRuZarQPfeIP7e3vfL1dufaYXbz0uJ2/9IC99Mo99t4P/K594St/gz6OoysO0DOrrusaWl5knE/bqfOP2tA4ujY6YJPQ3s0m3n/i8/biyw9YQ+NJGxlvhb7brHfksn31/vfbNx76MHTXZx3QTnP7edb8VZ7/Tjt57pvIs0V00T460fj7EDmX5NxeYG1NthSdsPHpPs62G75vsiee/Tp7eYLzuAGvD7G+PrvccMweeeordhZ+vtVyEfk7hs6chkb7kK1n7fnj93H2D9jYZKvPq6XjtL34ytftnnvfYw898Sl76sWv2emLj9ujT3/J7vnGB+2dH3iLfewzf21Pv3ifHT/zpN24fd6efv4+u+fvP2h//+Cn7VrTBbt2+4otxResq7vFGpvO29RcJ3Mds1IlZQuLY3bxwrP2gff/ob3rnb9jn/nUO+zZp++369dO2IvHHrZPfeo99slPvttOnHjcrl9/xW40nrNvfPOz9pfv/O/29nf9tn3kU38BvnjBWruuMvZp6+y7wb+P2dR8t+td4Z54PG7Pv/i4fepz77K/v/+D9uLxB+3jn3q3/dlfvNk++en328c++Tf2wQ+/zb5x/6ft0Se+Yo88/mX73BffZ5/8zN/YRz76+8zjc3b56mM2MdXBnNM2NzfFXobQUci6LXhQWOvwjt0VEf8T/oyPj5sDwjt37kA8FYi8G2AEsNiu2oGUOMp8DwBY20ogiOdRugAVgNDB4S4KcQOhnkZ4x1GcABeU++GRXptMqoSgR0GjVA4BUAc8/wBiOQDEFEpxC0emUVTbfDcAUYcAkszyrC0tDFitmre7KKTDIymxDYunJmxuodvK1agDsjtHdwF/GyiFHAouzXcENgCuLP7wEEB4dOSEKeAmMKu13QWICrztH2xZZTXOs+b82Rr7DnPMFRYRyredCXdZyyGbube/7cAnlhqByHOsue7PPgLcCgDWUGZrG0WE06pv/NGRwPMBwGoLYVlyRVTfX3l1H/cc0G1sZlEqS1bhEA8ByocHd51hazvLlkbhLrM3B0cAaACSxttCkZVWlhD6C8xng+drXwC3Amso1fUNPgfEbG6v+2/0dwEhMBXqQyinAQibDpJ29rYRbnUA4baVGXuP9w8ZR3usfdI5bAM06jvr/HcA0kVQ+8xhhTPOFhcR+MvMDcDLHuzsF1FSERi9kTOIsKdZwGSZM0mjZOf4LI4CLTFOzfdfBoL2erNWRpBPIpxWeB8Az1lqP3cAEwmEQGk14fPdZVwBtPpB3tKFSZtbFOFH/fz03d2DFcBnFBAWY+9WoAcMFJ6/B13uAqSn5jtQPr0+5/oev9kTjdRsFqbs6DlrGUDZPqB6DzC6wzlniguWX4nYFs8WvWpOoqE6IHO5AO0Dkpy2AM8yBo587+qsO8k5Z6HzmtN4nT3Oryza7c5XEJ5nLAm4r6HA1jagBwBmKj9pycwUoCDpAE5gaYV9TGbGbTbEGgGvZda0Xa9w1oD0O6KBKvtV9f26y7nso6RWAUzRzKQLziJzKK8J5GuMNEq41ybmbiAgOhg3xx7CK9BXtjxrkfSI5QBYW7tF6AWDgz3YgmbS2TDAO+trEo0dYNCIFuq7AGiAXBVDZofP6vBsbb9qVcDA9NKwJQsLtsY69N42Z7OC4kkvh5xeZWi9xhN37tadHlO5JXgKWQGt1ra3oJOyRRPz8GPKQa3+3oCO1rcKGKcRlEI/BsaSy5L6HsYZdFMFFIqHRPeVFXhsl7OFXvYO1+E79pTfbu/Bd9DDLuurYzzmSzGblNCPjwBOl11BykjJQ9fPHPuidfSfdDrfqm9xLpuA0axdanjCuvsvMF4c3tlELiAL91dtKTFgIRk/ALSt/TX2lvnCp8W1EGO0ArinAKjr8AL0y29y5bA9+Og9AN5e+FNyFXkInVarGTt97knAcxdjAo6hE4GdHfY8z/qSmTn2qILsgHfZW9F5AdoQoCqtZtjHVX63ZtvIwgLnPxkaBDQn3HgUbQkACCxOzfZYBwp4MTpt2UKUvRDfxP0584CqfBklJVleXwfkF5B3szY1PcDe5tjvdWi/BJ2n3CjqA4iUmMMWRvr6NsYHc82whx09DT5/Af3SShEAOcd5TqBoe/l71CrQe2Utw3dKAPwYhm8jhmQrMj9qmUKY9YYtlZ1G6Tejgy5izPZiCC0AxCM2ONLi4P/RJ+6xU2eesdDCMCB5xo2Micl+DE/Oolqwra1N/i6yx2WLZWatZ7jJBjGIRXc11rG6UQbsL7qxLDkjvtyDl2T8rCMnLt943q43nnDD4wA+O4Sfa3WMm9khjK8wPFOFtjDskWEy4LUfLR0XMOCGAMYYfADibDlhQ2ONgNqLvC7x3TR7l0EmJu04IOzJF74MmLvmtCtFPo08mg23W1PnCYyJl9EBi8yzCE1XkFll9mWB+Y6jn+YYf9m2kbu50qJF02PW0n3CmrpeQGf1oyNl4E5jDJyxp577lD329Gfc4bGJQbe1veY6L5UfAZycQzYA5qHXCvtXWU+xVxM2M9+JTJyFXlnfep69hcfKi8h97RVG2GaV/dh3uq4A+BpbTln/0HW+I3mVdRm/s1NDZgQ6SWDXHTJyKLD3+ZLkEgZHZMoSWQyuNckqGeBpGxhBVi+MIguWmRO8CY2UkGmLsXEMnwA0jmHcRBPCAQDY2VY3Etp7LgAeh93oKrG+LIZXe89lDI3znMmgRRKT7NsSdDVng0M37caNF21+cRR5Cz1XS+ht6SIMlvbL0Nht6+q5hQzGMFoctpaWMxhcL9jp0w9bW+s5W+D9QjnGXs3ZrdZLduLcc9Y9AF6AVxYi44Dd24DZ0/bKmUetqf2c61+tKZqcZe690Ml19ngI/pPxtoSx1WiPP/V1u/fBj9r9D3/EGpvP2+h4t01ODWGEzdjAUItdvPIytN0LXoqBCyKc76yFkIcvHf+6DQ9fsVxuxvWp9nxzc8Pae2VQzyCr9uwu/9P/+euf8OcfAKFeldVVFGYIwslibW+6lS5hLIG4CSDc2ZXHpMqAq1hqKQ41bkWE3R7K+c7dXZ4hJXrgBFVdz7oguyOPIIBLwHIZpsgVYiwwaXsI6V3AiQCewNboWAeLvM1vswARgb4Dq2+vWv/gTYslxxHeWzxfoE9j3LUCh7/A5uztrtkdlMtdAQsHUQAywKHWoz8BGDxC8dUcsNQQogcANnnZBEhFuBGURCeE5CDhUJ4xjXFkC0sjdu3W834IAoevAUq95OGUNVHfLfizNc7uXp0DWkUgJhEcefdYHLIv8ooKEJZ5f7mIckGxyfMpwLGLMsvm4jD0NIK8xHt7/qyDg32eBeiBMWsoXwE4KddDhNcOQlefZbIAGITa/iFgiHXvMsbWzhqAXoAjz7/ZfxMIB+yxT8ksShThuI3C0/q0T/LMBWBw3ba3BZAP2fsA8O5yRpnlJRRRiWfI8t8HdAFsAT3lqkDqHKBv2UGEALeApLxq03MAkc0Ua5QXWd7abea8xtlHOQOBxGDvtY7d3T0IesNizFnKSwBUHt199kdgZGKmg+f1IqiK0BLv7Wzz+y32OOJAvbyWQuCssr5Nf6XzUYTedZte6HSQLSC8zW+0H7Ek59x7jrnFmBvgWgYK+5ldjsOsA3wn5/u1A4AUveo8CmUAD2u5AzATbd/VOTPvcHTKkul5zknGkcAIoBPALmHd1nPOgZ97yP21iWIoovgWrVpjvjuczSEABz6qrCUBUFMIxiUEIiBxu8D47NVyGLrrdoG4CqgTzYlXVgFA4q308gzgapbzhp45k/reuhsgudIC4yAo4NU6fHnAvCXIqwjpfDGCsK1AxzKOOGf2U8qiiLAuVwCD0FBtW/sIONgs8vwFi6NYN7WPnOUudLK2JWU7Z+Oz/ZYA3G1h8Gyxjm2MRnkJJfSXkQnyrMvYcLC/s2WpdBihlgLgsl9u6B2wv5vW3NaAcrnmiuYQgCbQtwWtFFfluUMZVVHcuyX2sMrcl13mJNMAVM5T9CV+kUEoIJguYFAhtAXq9hlDEY+1TfiEvUzm5n0ftU9a38Z20b2RV2+9DK10cX4bDiwFHDIo3wvXH7fuwQuumLd3yy735MFu67zsnud1eFJG8w7nvwkASy7PWxj60tnWBMgAb5qvAOjVhtO2FJ2FphUpgX+hfxk3DbeOoZAG2Pct3ocfMTj29tddwQrYCDTKaKwxzkZ92T3QUpby9mu/1qGpIsAmxBizsSFLA8wEiuuAmF1ocWNrGWU4D5/pLOB1GZPIoz1oabmc8jlqD3fhpy1orgp4yGOQFkvsOecsR0CdvS8y1wTyaRnQtgcA3hEw1znx3znA3XIl6Xx7CE1pzxVV2qpvoCjHXqVPnY/OT2AwCmAes7lwH/sMb9UwaAEY2UIIEDnIOAJ6aZd7MmYE9OKJRYyVZecBl91H8CfrE1BdLmDcInclF7cZo7YFmGCf5OVcAJBuyajkzLXuLc5xYraLz3PwH/ugeSLL1uCBhfg05zcF6Fjgcxm+0C56Y3VthT2MOb3ssE8CvOLzQiWMsp9EZgDMoRF5zKsYcXmMqh7Ahww+GSV16GbbgWTJLt44DhgS6AoiX1pPCTna3HnG+tB94rnAgNmBNzCEPfpyjbHmoGMMT4zHtS15icdtcOK6LSZ6LF/BIJRhVI3ZQriX71/n+yH//S5GmnRNFbmmvQ0tDlgZYO8RFOjMZQJAIwmwqKzGONdVl/mSfWsbWcBXP3Je4HifZ6Gr9nbhjyr0mfZnKuJ1gL48dDo9cEN/bb3idOv60o3BIyus5jjvaSuvY6zpjKDdTQyZdUVr8hGPgGzJ+ETuysARMFxEvkaT88hf1gxwlKNjg+8XANySSaKdLfTDruQ08kJAWl7zCDpBcw+cWKLdGOc3aQl4c3VF+gcDCzmmcSLxWXdOlaBfGQf7yJHqesFmQj3W238d/Q8IxHgqwytra9qrOHQ1ZQNj7Ta7NMrex1lbgjHH3WPb2X/Vwav4dJW9qW4uu8Ej/SKjVPpTMk44YrNWsamZXhuf6oSvom58i2flYArNT9g4Ro5ofg/9JcP14BC8hKzd5PzlVDrk3x5dRR9Jlk7Pzdjxs8/D12kf5y6a7P/JHweERzCxgEBlbdWypYINjoGukxO8hiFsbSIAESG3x0GWKhwSRDg52wjjLEAkqy7EtlEa2zC/iFwCSELnUN6MAywEhEsqF8KimnFQJAJyDwtMkc3FQOaNtgQx3UGo7OwjTLGEyqthm1/osPHJRp5bcuIKvGLrgKdJS3LAGxsZgCBoGGI8gLEzaRQeiNnDt/Ju7XMACFSBD3lcNhA+AhPyVu1B3AJzvYOXravvLIc2514RjbMPMUdiM3bx6lM2PH6T3wPgDth4MSoELQArEOOCiPHdm4bQ26jlLJ4eR2llnFAPOXh5KcREkcSsz02MInB4wLwkWGIIFVnGK9W8M5U8kBLSGx5mA3DKY8f7Arha0+aWPIIC6EWEZZ7vB8+SF1LCN51H+WXlSUMBuHDedRA4HxlxcBGAyx3ODcGD0E6mlgCWYf697s8S6NFnWuPcYh8ggmdxLvLyHAD8dhAyhUoEwpvlnKvsCwBqR4Qpgl3FQIhxxjIe9JnG2WJPJm1otAWrfpazXGcMrbHOf1cAPhJmCgMCoGGabYSzhMw6ymB2rgdGnubf8jTJk8mcUVDLGCl6rdcwUABWtR2Bq3Vb4Tep5QUXuqKhOnPd2UO4sZfXmp7BejzHOYcQFGsOirMIo56Ba3b24tPsd4VzF0jah5kB7mUUfGySM0AR7AqEAuARbvrd+GSXjU62sN8AeKUisG/yWLX1HrPz1+9HuU2zbugD+t4GyMay/f7KI9hlmcuzUpUntTpnS8kB3l9E2JUQGiiU0hzjByHyvpErNh+Vh2XI5sPD7G3EorFRm5nrBFyzxu2806obYQiScHKQ9c84WFCoX4p4ZQ3wmJ+zsckeV+S7fF9AXGdZXs0j/MY4U3kCa5zzPvNYYw5J6xtqBtxNA2ABOAheee3kOZpb6vf5CIDtoZgllCvQqehrKT6BEMwDBtZ5AQCgUQnnPEbgcjHFea2yZ4AM5lEEgJ7HAr7ddpXfYCSwVxL8qyiNeHoRoT/lz9Xza/USih3hWhhnHzpd+W3BzzIylOpRrsZ9n5L5ceabg64UtgbcAXgiGBpz4X4PP8vLtgsPFzEmWntPW/fQFcsDXsU3AoI7BxVr7Tlpx899zQbHb/sz6oyRB2TPYGC88PKD7klYq6Hsod0deKZYjqJo+ziPeRQsY0P327ur0GLcBiYuW3Pv866U5F0U3Yl3OvrkxfkicmwEWSADG/kJeAgnxl1pr64hC5BDMm51hqLHyVCLRdMTvgY3chhHqR0L4UGU54itbCagd2hYa0SubAIGZxf6UKScE+s44HkCG2ucwTJKdhte88iBnzu8sx4H6E+yBgyJHQAw79eR7cUV5ElmhvMDMGBwyVO6jzKqYggWAXKr8OC2ABc0KD1S5zvh2KwtRnjWJrIG2XSE7BKYSuZnUJ6jzGGZsynxKjMnRZkK0M4YexhmXzUGspFzEk1qPkoFcYDmBpzk0y4yCyUNzQd6Zpc5AcxZqwDwEkBQqR9r4ik37BR9WIJ2RlgPZyH5h8zeRD7kq2GLwzOrAsBagxwL8LRks5T41g7gmn3bxajbR28pmlCuZi0nz1g1zRpWGQeZvJ6wVDFkkewE760BOGU8S1kf8u9NKwDyN5BtStsQ+JfekLwcGL3J2sf9XGW47R3V3FPd1PGyNXe8giyZtFxREZcE4HHBQtF26x87b4nlfuSIDATkyVYG2ul3GhHP6Tmul/hbum+F+Uo3S0+Jrnb2OVvAvPYoB8jfQqbqLHZ4T9GICvoijJxRRG4Pw050tXtU9XNb5axchrtzRnopkJnSWZLTnrLl61PkbQsayFo8iwGH8bLN8+sHyBpeMmRkICuatQkvywisQ1va22QWwxkwJeAqA13RBJ1DBUO4Wkuz7hy/0Zwl99fcmxhFT6Tys/BBGF6GD6BppXolBQYzY3wfut4TPSBjtvKWBxzmV9Ahkj3QpuYt58jmFnPZkQyBNpFTwgTb6ElFT5ReIk/rJr8Xf22BeWo8N1dSasSon4NklWh6C9kzPN7uoLMCsBMWkHNMe7MPTUgOeSSOM3otGiWdKKdVLh8ARBk5ji3YxwqG8VJ01DFBIPskY1fZj4JNLQzZmSvH7OsPfhH+mmSsIK3tjh0FnsJ/wh8HhFJ08uSkCzmbjixYa/dtmGcABktBYGLIZf5GgcEEMQhvCEW1XJxEwGVti82prC4BHjptcqadSUKQnlsnr5jAEJYIlo8UiizjLZhzA+KYmx92F3BP/y3QcoHFCyhtQBBhntWO0unGQprwg3Ehh9CpACbbu87b6NQ1mKnKZgF62NQC4CCNlSOkLQvHvXW7WDUIFHmwlPsnj5pCs4FXDMaGAMPxIYSpBHCGMRQO3kMIraI8O62j+zq/E1ASEt8LNn8d5VNJOSjU4bpnlf/VYfgt1rSFQNqVV1AMKSAKsJEVVUTBysoPQs4CXRDe5rpF2Gs9K/CwgekRRvKOrW3keRUCooCxxNwe1kUY7qA4pGyPYEbjyMWMsjgTmXkEfZx9hlg4S+UQSMFXEZqDo+0OFPdYowsjnqP9ELBJZULOBHqe5izvVBRrOV+IurXk4MEJteK5IrPz/Ta/OOigVOFUAdy6vJKxcSfYQwSaniXCl0c3BkOElCup8Ix7/g6Yr7y1FQBAyS3y5RJWPsJEwlVehAIKVDl4ynHSvx1EsBcKpaZz8lSIYWTJSrCjOBDWcdYvwVNhznWE+RZWe3ktbguxQXvxxH02MH4FQKJnIcChCeWaKe/k5PlH+O0MwnuLs5dnCZCeHbKFeA/CKurfF7CUxSdrNYV1KmNlH0UuBS8hmEhN2NWbT9rI7BUrAeakrOXdSGXHsfzPWWffK5xDFKaOI4BDKJAkcx228dAti+fkVcJy5vubCLtCeRr6voHyHwYEFaDfDOMtIfAGMF4uoeQFBudYSxKwF+GV5LkpLM1WVx7K3azvlaGRkoOFrr4LlswhKFGs8ixpL7MFLF0s8EEs3RJgXPRSB0CWAI+9AMHT51/gOxFftwSuzilfXrTphR7mPWaZ4gz7HGMdWQR72MZmmm1kqsmVi75bAdBkluetH2U3AXgtuAUuC188N2tToV7r6lcO0YB7IQUIBIiXoKGewZucxxxnIc+3hF4JZa7QYzOfnYfG59gjDAIAuPZlbLrBhpEHxWoIhbPseylPbzq/5PlxArEKka5sIMvqyw4WXnj5XusYQIah+OrwRJXPlK5w/srjdvnmIxjCfQ5EBPCqWxG7fOsxe/TZT1o0M+J0JcBXQVm2dZ2xZ459xnNBNV/lQAvgZQAYU4ttNhftstwqRvBajD3JIF/n7HbHcTt/9Wlb3YRXmY9A61Ji1Fp41s3m055nuQr/KwevspbzkNhkqA2gP8FvglzJ+m4dYD5oY7O3+O0Q682i8NhDzl5G0fBUg80utVthFZAKYJZ3ehulPh8fRXkMsibkOXK1BiAR2E8tT/kZLgNWpZyr7olSesOURaDDXHkBvlBKBHIQ+VNYWWQtU9BODHrTumUcbyHLVmx6rhs5oLC8gOKqg0V5yVO5MOfRAz8vu5d4Rx5ldEqMs50ODUJTS7YFIN/kNzVkkLyVy8j7ZHYBRYtsZZ9EiwrbZvJxp7Nd6MPTSwCQAoR56CKZDfl+yEsrWSxaiKU5j1C/z1URDkVOZDTlK3w/P83+FJCLKF7klby48kwrvWAVeS8wKI+yDPwKBngsGYLOlaaCXkJuezoHQCOBXApzjvIQb8vo0u/Qd+tKBWAu8qgqBL2L/lH0I56esmOn7rXR6dvwnwy4PWRgnX2Ytf7x89Yzchbgk2JcRRdy0Oqsjc/d5MwbAJ/sST3NuDpXxs4POU8KJCllRp5azVt86NETZKWDTT4TvQmkydCTTJN3TcbBNnslT2eBPVeYVfJLXil55ncOMew4K0VZNMdAtt9B8wlgbtsqIE762J0WfKbUFnlxy6sxXoBK9kE6QbKyvlu2EiBQwHwbAzjw8ClPX0bRqufbyyupde8eas8EwjEmkBM5aGR7Hxwhz7WMW+hKYeIo8ncTsC2wrs+291eQSxgAYIhIaog1F/x5qivY3hVvzbOWKPuiHHqAGeexh07aRictFxfRgXICQFvMTXsgGav8cRmiMsL1O+ESeW1L1RnkRILny7u64b/ZZ94ldFgSXbGxqVoEgUHtCeAcGSs5KJAb0Bx7yEt6Vqk7Cv/u7cvR9Go9BPoyhqGYyo66vN9B9uxwnsIpcxiP/aO3bHK+G3nTZ/0jvTaz2MV4itZyFgZo/yd6Ch0QKl9OXp7Wri7r441wYomNUN6blG4FxlDIZQQiHrQaQOKQBStMvL4pt7GS3uVyTiAE0mxm1TdeqFvCUwSoA5fFpw3YqG1YR895a2o9z6al/HsORGTxrswxxjBKX0ULyyxKQFWevJJNzDShRM56GG0L4adwlw5AuTZShmmU3i7jBDlp+4DHjHX2XPPcirpbRxAkyFxWwC5CVYAkCB9v85y6e/sUsuwbvAXgGeE9iAEAqfD09vaeA5HcMhbFRsU323MGYXAd6Gq1ZNtbWPpYx/KIKoQnACtLIgboVSFD4P3T8/atUMwAIpYAAGu8J+ZSAjMMK5cxAkz7qH2RZS/iEPhRCKkEIJFXT563wJW863ug3AYpEjFJYEkr/LTvQjSWmoPBUwivVy1T5qw5zsyMMY+kjyMLJQCJZcvkIp4zFxDVkY+jtQgcj010M49lPkN4MTe52LW2ZQCGAOTaOswKQeu3mtfW9qqlM4B0ZxLti6y9XUBgyAZG2gE1Aomy7nkeAkTA5cbt4yjkMQdtytcpVmBAzjWPFRZG0QiQOxjcg2ag2dVqmXnLM5mEFtkfWY2cg4RAR/85e+rFL6Ace1wx1lBauUrU+ica7IVT91vX8A2UXZxxOL/9HCBsBMXYAjBaQPkmoV+ejdLOledRZt2uENzg0VoQuCpwmJ7rsrOXHkbh3OQ50Dr7ubGd9dDNlZsPwbDnEXBL0FuZc02i5KYsFMNyTPU7UFDYWKGQFaz/kbErPK/FAY9CyjKitjlD0YM82LEUQBzFsBjrAdioyKoJIXDFc5kEVBWOl+dqdS1h80u91jd0GQHbB10giFGyNYShCiUE1MIJrOYt5dBMAMhZLwKype0KALLJQdQ6gk+Ar7KeQDl229XG520+2u+5pAozCTxMzLZbW88ZnjXsVrsU9sp60RVjz9B1B2SlVXkGSw5CpWi7BhrsSsNLHmZRPk0yN8lzB9272D1w08Gi0hRSWcAIYEdFBpevP+WAeLk0D9+IngH/mWHA9nlr733J5sJtli6OuWJMF0c9ab+z7yrnDiDjN8oxirJHL59+2B589JM2NNqEQkT5ZLD2OeORyev27LHP2akL9/L9UQedeRTszEKzXWi4z05ffgCFP4qyXLDKhtYxznfvt/seep/NR1qhizB0GnXlF1rqtB6MgMVkF2B/gvmEeWYYID1uTzz/GescPA09JFDWyuHK2eD4LfvK/e+2m23HoLm0e1GVqqPCERVEaQ0qHBKgLQFClZKwgOHV0XfJlgCu2ZLAvuhq0YYnG62t+6IbE5nSGLQ+wXnNsL5m6x66yj4PA7RUYFPmjCZtiO/3j90AjJ4FFE5zdmkHeSmU3+jsNZsNt1pxbRHwkfHzlZdVoFbA3fkJ2tRrDYDh+X8YBYvRXvgZ5bgL6AIoCTgOY+DEOK8MQKNczfGbErQfhg6voMA6nMfk4Vde4irG0kSo1bqg3SzGkUKkGlvGkYpxlFMqY0SeHpdpKHQB6zQGSA663EJRbiJ3BBz1fv/obQxSjCt0keTyHnLOwd163L2VAhiSLy6HAJeicaUErKynABjIGQCQQLLofTE+CB3ANzsqrlToscY+AJwB1LnyjJ9RTQBMYLeeslC8yyIYEavIMgFEhZ21FuXltfde9mKOncMVngcQRq4sxgfs2Omv2sTCJf5d4FkCSlX2YdJeOvM16+y/4EaB9k+yaW0rBX1NMb7mlHPQo9DrDjJFqQpD4y08B5nAWezs7frf5aryjWVMYuwDoHYd9CGDdpctL4M7j1GALpP3T44IAV8ZFnEASZ29kuEsJ4X0Zo31lFfjrp8PjuSIOeQF6Nwu2OhEu83OD7wKFAFDd5RSUwDEdKGv212+H9wVjQDkAKMVaE/nFM+MM+cy+x7MTeeZysHDlRBzKfICoHIuSsMRv8gIkEEpz6u81AKE4om5pT6XYYogCdTKOFBIPJsHDMJ/0hMKbR8oDMsZFpApaYzCfYzpXcZU4ezBHfRKBRmVnWC+SX6jdAk9CwNlNwewjbhRqrQzvR+8GGNZRm6atWMgMld5ZwUgi9BQONnPuWWc1hQVkd7zdB/0jXREgAcMICjdu2UVAcvklK2vJ5lX0ecn7FXiWaOTrTYXGbAKv80jexYzYYzQUTDamnxF5g/S65/wJwCEcm2jYNt6em0xnUZYsjBAkwCHwrXKoVLsWoer0KiU1C6LFxhQ4YASjr2oRPkEoOB1ULHi3wq3CN3fwZpQCFMWihLIbzWdtlw+DPHIWyYgVLOu3uue8BpPTrPx6yjcIA9BHoIlBJlCsbV6jvUFFb3ylCnnT/l9Uph3VRHtLla5ZGuMM4WinIVQX8tlElASEZcAdXIHA6gEkITS+Vv/lmXbP9TEf2NRITgOHUDuAXiwmpYjAB4sCr4vDyRHBgEqrAH4APGLgTRnz38DKIkIZFkoL0zrOzwIPHMKOS5FZjynSkJTa/EcNPZWXjflNMjNr+9qHIHI9Q2ELmMLmLlrG0YNcvDWrYoVmEjNu+dHYSHln4jYJLCqm8soqxJ7pbANZwwBqgKwzhz0cq8oz+P/bG93x2bmhj1/KfBkysupUEDdQ6tdPTe9ujsI92te+8xnw9JY8PIyeoWrvBd10c2259gthWc4S1mAWD38TgI8k1c4sh2lGnZwGOQdHcBwJfcatXZd4fsqCKgz7y1n9rmlYQDkLfZBXlMZGwKYNU8/mJrtZh2ak85KNCOhWEWpY50CuCQolVclAbNzqDGuW3vPVbc2D+4odLIOUCrYQrzTnj72ZfdMKkyi/dRv5HW91XLWPRXysMrr6eeofKSZZs8pW0GJqhJ+HzrawVgan2u0263HbXr+Fr/BOgXo61XDqs8UFd6T4kIgY+HKO6CwTwqhMxfqgh7kfZZVHFjIG5tFB9xKEdhDcKswRVXi8si3dh9H2d9gDctOP/LOKgyl8EIOBbmGUDq6Iysb2uRMlNs3Mw+/KCwILUkgitazBSU+3/acVIWCtHZ5U6RMEtkQSmKePVEVP8KNM1eBh0CIlI7AoQNBFIy8QfJQK0yr4gUVUCjsJlqUsG9oOse8pZxVkVzhuyWUzZIrrnhaqSgINs4tJwOjuOB5vafPP2IjgKZMfs4isWlkTdJiScBj/1UH3UuxQZT1ImADQDJz29r7znrSvlJeoimMCMCqikBOnn/SPv2F91lH71Wn5xLgfhFQ1DfWYPc/9HGA1CkA5wzjzLrHd2zqpn3l3ndYY/sx2xAA4LzWtlkzIOw0BsCNxuegoRlXfsprrKzP2eWGJ+zRpz7j3t/S2hIAddqiANv5yKgNAExkcFQA3sox0lqHUZof/fRfA5KvWBGBriR/FcQILJ288E07ffERALW8UQpL5lCWE568PjHT71XX4hkp1lxpDhB6xW61nmHdM+xvifOJoRinvRr4/JXnAe+dfp7y1K/XKpzDKOdx0nqHb3LGc4wdVK0LhLX1nkQXnHeQqeITGQbVmvKn+gCove7BVHhPqTAyaBKAngkMqaiMDACPgIK6H+wdqdK/xUanWlDOWefJXDHKswRkJj08v4BhI4CiQqTC6px7e4+d/joAUp7MmINj0Z7W1Nh6AUA4ABAIvN0KfYq/BciW4tOvgh/RnMK9a/BGu0cC1jF09X2lS4geBawFysR34n/RtLyNSjNRPp2/7+9JPlSh/1lAahv7swAwLfMeQBjlLKMtimGTzLPuXWS9ipLQXStbCRRzry2lhqy6nXYPYQ1dKA+ucn/DyVHbu1NBVgCcDzAgAa6jM7fsoSc+ZqFIl69JoGj3cM0NyEs3H/aqeeVEyxspY1f0MjRxC7nVjaErgKo5A6pZv/ayGx5QSFjvqZBQelhRpDB84WvYC2TyHkBuA70aRr/OQaf6vQx06SWlCmnNMc63tBZFJiuKt4+sA6Qyxkyo2/9WwZj0n2Sw0lJiiWnPvRMgkkxWWFnODtUCtHepSEt5bug8ySv2XSBVUZoUPC5guM84gdzAkCyFOBPOVmv3aM2mn7PAoHKlVWSlKKS6eigvUMZkNDXCvBUK33BdKO/jwdEa4wDqI5wJwF0RQjk71tezloX+05kpT0Hb5RlHzFkdJNI5DEPGV4GkgJ50meTr+lYcWp71sLpCuCpCVUqaUojigLeh0Wb0v/Q1ugiQJwAnY1EdOZQzKnAqA0RnojOWoSXnkSKhckDJ+yodt84a50Kd6FSeJcwFqKxDGyvQr0D1zHwfz4tDX8uWARjHwQ8nLx2zUGjC7qLU9eL/BUjvf/HPPwBC5dsVq1WrbKHUUYQKfyh3w3PBQLFy+WqiCqmJYWoiWPdgyVskYKHExzobs+4eG3myvBrWvWh3OJQ6iDrPRibYJCW7yjOoOPq2e3amEFjyAEhJyfvmhRXKXwAcyDumMURYUsgCQouREfcMRuOTzF15VHccLMmDN784ZkMj7b7BIlIPFStsgXBuajvnnjZ5ElU8IasmqI6CMRCuCp/qWfLaaUwpYrmKxSB6flDJLGC3BlgNhJITvawjAI+sqyLP1xr3OHjF/+VNkrdNVXCqVi2WMqxBFpVC2CqiWLeJqR5TSwsPIR9oXoHXTmBWrmTtrUCvAx8sNHnf8oWEv9ZY82se2PKKQsTd7jFUlaNCFGqhoJyylbVlD5+srpZ9bM/JYW82N7cA8GqLgwXCXL0QhJfOSHutkLc8rncYPwC+AvFrpuKGDeWYoQAUCpBXVZVbyhlT+4zA+4ilwzlvycu5XoEx8ljfClWsOyBUmEaewrnFcW8JUV7NQWMSRrv8t0K7PRgK19wK036oxY+YMo9AP3H6WwC1kWCffM/u+nwD+kQhIdgEeGUJSyncbH7evnH/p6xQzPraPbQNUErmJ+3M5YdREtOAJ9bP8zS+fpdIRzz/U14FCUOtR4UkaX7T3n3WAbl7frVOziVTmbbmrhfd6ybLWd5SGVsypnI8v7gy78DJLUT2eg/QJw9kLr+ItSojRYUrQR6TwJVSFTY2le4QeGyVqqDctWhixL1mBX67XpMSljdRodcs55hzvgo80hgQnNsO8y9UVBSm3FblqwTecvFpAVCniv3AaGJ97IvC8WkvdsJwER/Bw+5dZk+VRySPiUJP2it1D5ByUUub+SUEKzzgY8jQ5H2BnPGZDvgvwnPhVYFqjE15gBUeVuWn0gmCFBMllZdsdg7+nuxB+ClnpgS9iz4Lnj8cjo4xZ+W0ocQxxpQzlMjO2PRCL38HeY/ueYD+itUFO3Xxm3b20rNO3yqgUPFUHOH8CqDrlfMPAQBnHRAphLaxVQa8DgCKzgAyulBMq04HMioKq6EADN5+CcANONhGBsCb8fSYHTt5jz177AsYe0HbnCJGcmEtYjPRLm+7IbAnQCK6UsGZQsEvHH/IgZk8QQojKVQWAzSeu/KkNbS8jELDqEaprG3KW4zhh/yamR/kDFEk2q997TtKG+U0F+mGx2RIHUJb0O4BIF2gPTYJjSR5zprLDRm+1fUyezhnmRxni4JVqoT2XKAtkh6w+WgHY2z6OAI48twVVhfdSyQvmPLrlPqzB2ASYJxdbHelqdQXPxOA/jq0EQr3uUGl9XnqEPsigBEK9zu4FVCXUlfV8fLKDGDztt1ufwEQ38seqasFwA/FqrSCp5//lqlKWhWv3qoII1NgYGD8BrJuij0C6G6p5ZIq1Is2uzDi6QEyRiR7ZMSIDourcff2uteRNbx2tvky+1GcYp9kQCmSgXEt5b+dAnT1Wr4yy7O1v4q8oON2ssx91j1a63VksOYrbyZzmJhvtlnWrhCsCm/0t1f5F9UKapg9BDjqM3Sr5IrCmw2tz9rIzHUHmzt7jAHgjGb67GrTA7weRWZmoE8BetbH3GcW+6BPgKhywgHMQXi+ypzCNgJYULGaquV1thpDXQgm53qYw5KvS3Ql/tD+KDUnnJ7inAW4gmiO9JvC70uJQVvFGFAXBeWki6fXAPQyAlYAifuAYkWLlN8ugLVcSCGvSq57pRfl9FA41iNJxTBnJxkkICyDd51n5RzA+nxZs4xwpSYonzGZn3Jvt0dSOBfpDNHxciVsaQzAlc0Yv5esV4GVjFeMRuXkKw0AHguAYp0zKdsCQHABHlHBjeYtzKF0LlWxZ5A/G5vL6LzNV/Vx3eWL2tCoC4S8e+J1eUWVLhRN9UOHcw4sPdeQuargY2UtAUgccaNI+lCgswbYl/dPueFrtRjzkcGCfoW+FK5XdXQZ3lGUUvI4wCvbLssXowA+jLLA2IcX0bP6txxkalm3pgjt1jJGR87yqxEbmuu2J194xG41XkAfBUBcr3/Kn3/IIVQYcAslUIcZNkDimyhVhZ8CICKAJICy54JWrm8RX5AwzG8NgADR7cBggeJCOcuL5KAOAAfhKWFc1Z6Knat9h7xcCuUqvy+bD0OAqygvuaKDA5GXTeBPGyQl7HPgfwIkysdbWcViB1h46xIHApumZNipKRTJxJDll1OuPPV7hWG7ehus8fYlKxSwTngvaE9zCMLPcshBWwmBQynjIBwceMA2ITQVgxwc6PtByFdz39rGWtAhMmd5C+/ymbxTShoXkHbAwR4oTC3gIXezmMwBL3sWeN8EqGuArWUYBsXDGoIcw+A86uynQLMUqIMBf3+X9RQgWIA14FH7rbEETCVgktmwtXbchvkE1OSdFbiQIlfBgBiq5s/S2vU8eSzFxAKpAoECLyJMeWfV60uATyDVvan+vnLmQjY118HZhV9dg1qXoLT4rhS4vKmyjlSRe7B/5AIpmQnbdGiU7wikKklb3mfWrv2HkVZgUFUv7wBcPc8UADAzPwK47fKzkTdWqQ2a+yTgQj3J0jmEG8/eZ+/Vl1L5cNG0BLdCDgLICp0HSvNG43m70vAKQmEWWhX9BaBLgjaC5bpclgWssDZ7wxgKn81hWCjfSLlCQYVYYFgsRQcxYLqc4Y8QXoGRsoHi6Lee8bOuWASu3EjxFAbOH3CoAgh5kA+hr332X89WwY+KIg6wlmVQOA0yvsCR8sVeM8ScJkW3AEl54wWQlN8ikK7vSLiNTDSiPKd8XgGtiM6VR4oS2WSu4kvoQR57rXGXPZpeGEYQY8nznsJp2hO9VtcxxNYF7HiO1sHvxMsSygrjyOMo2g8ASB1hmLdInPPYVf4q/ABPKCHcPTKqmmV+QeWvxlZ+6657BWUgKpTHNvG7uwjQqnsXq9WS74PAvv/NuqPxKQTuULBu9ikwAg9dqIbjE64slSslWpdRkQG03Wx90fu6SV7JgNV5KV3k9NUH7Mz1hwA6EX/GpoAP4HwFUDSfAsABBLahG+Xr6VVaCyNsP2dtPWc5G3n2lbCPwbidtIvXHreR8WaXF1KK8qxsMV5yec4WU8N+lqr0115KEaidTnv3TQxHgLu/jxKAvsPJIbva+IIrenmItbf67Ojurnv7FX6X59xzlO/CQwAyFdFkCvLQq9OD9haADs1XAQ+qrnaD9dUzFC3I4JWclCdHtCmjXWdbR3Ens/PwTonv6zwCGhHdK1UiD7ATyHSZCs0pf6tQibsnVtEi7aFkxBEGlSqzVSX/2tm6IcHZS0lHkiOA3nGAB/uNnFQxjbyceYX5FrowpJS3DZhHlsnIEVjqHmhAMcujrgpfGVJBLtzwZAugMOJrFJAQWNiRNwaFr9C68h6DaEkRULNki/EeQMOEgy0BMhk6CksWlbcuQL1XZF8lN5RvV7PVzQjgcQi5ssh/q5sBRhdrFQgLRXotkhpEmUccCAa9LnNuXE4sNNvmHkDiAD0KMFjfyVtpfdFC0W7/rvZOzxIYKvLsxUSfe48Vmg9CyCXGjNjlxofs8q2HPbwtj7rORp7qmaVWu9HyPM9ahqYPXU4IpMtAU/Wtwrzyjkmeyntf5FnqreqAFjqTPJYeFxhcEk8lpmzvLnQLLYpvlMuvorX5SCfGhrzHGfZDIG0HOa10h3n34OuspQultzZrajU05MaAQp1BBG4XnbPs3R0USZL88ypZ3lObHwE7pY4oLWWDPZXHW2BeHsNEdtxBn0C80ig05406gAhZmcyF3HOsPZRxIF0RxjieFBBf6gG8zzu/Kvqgsx2eaGL9vZ6SptQYhXrl1U9hRMZdh2xy9uwJOk95n/LGh5HlMuqFgUSPSq/JLE+zJy02s9DIHEO+DjkqtgD7hcoi/KmOFGpntIzOVK5/ydPp5sPd7MEQ60ggL5Tjv+XnIoNNsktgV7zoGAtDXlFZ1USsb6WhIXAWsnabM1FrqzxjZAtLyJ7X5AwG9FbWhqZbrKPvpqUySZuY7ONskE/wJBIyQHr/i38CDyE/FnPWAQPF1QqMnIGpVdCAsoOZXRkhZNwDqPi6qokQPBJAenk1LQx5sP/q9xEw+s1r3jQpWgk+F1gsXB49uZRnQ4NsnNzKqiCVQDmAwCuOvFV4IkWgl0CggJg+lyAWyHoNmEkQCWStruW86ORAlglK9+hAXiNZKJu2uDju4c4jhGmgkO9AnJue9Dm/OOyHpxw+R9Q+f7WrCcYMxg/e0/gBYFVbHNauNWoPmIPWJIDqybgOIOQhCbweUsa17Q2+I5DL3LUPvAQIxKSBINV+KhwZeFplaWtvVNAi5a6XvJQ5LJrVVYQKCuwu89PYssTU9zGbX4KYBFICBSCrTW1VBOL2lWOBggnWpPWox57mpJwQxtDYDkjuuhduS4zGGew6uAh+o72Xl1EtIlRNLK+w9kbnISGgUnqB4gDIM2d5iADNmUIMBsq7p0qgSgpKOVwlgHqpqvwhlJ8AH++rSCSGZdo30mzjM32+R5pfUBCENV2M2OzsoO+Pzl2/2eNclJfY2HTOqivydIlZ5GUEwMBscUByKpd2QX/IvPSS4FuKTtuCGjpjsYoHgjnvAWoz1tp91eIAX9GFzl3ns7VbA1CitCQMOafALc+5Yb1JQI7PNLOWgu+LzvHoUApXBUlYzIANPUegVucvD4yAiYN60YvvfUDvOmcBcxkUTi8OKu+4oSHgJ+tbeTk6e52LBK/4T42W1Q5CVq/aEfl7AIPyCsp0Rxao6DWYk7wiKi5QGxnvi4fc2GMe2tNiJY3gzLAOjSEgIdo4BBio0CIbzJfPnK85ry0U0HJRfTVl/EB7rFNAVcpTvd92oAEBidfOWAAyDVgTwFEKQ1CgZTzrjsUSS+y/jDbRrSoVRcu73mpmOtTDPqraUzlR+nvD1N5nbnHQPQVS/nV5kNmf5UrIrtx6xtL5aQwbgJfzlcJdG9bSecYbiSsMpXYkULDPNQuICMWw/jeiCFN4hv2V51JenzTgTjmuB3cUfgos/Fxx3m62PWmToVusS14oBD30qsro9p7zrE/W/ZorM+2Z6E+N49PL8OmraREHPEd7rPZGDS1PIH+TzAljlHGV+6QihdTyoi0DqjeRvQr/yQDc3S+jmHpsYq7LVpTvCg1rXuIlJdk3tV1i75FFKBPttyptlRCvPD/lRclLI+NGfKsQoHrOybu8f7SJAlQ4uMAcAYIoxXhqBjqtMDYGJUBta1eV62oLMsl3Ap5XpwnlVsljr1zXDOei3yilSACxUFmwofGrNr3YCM/Lq11wRVqqTmOU3EbZTgLO1JJEbYxUzBP1qFF770nAKOPzXSlgeVwUwpxaaOK3KgxgXhhbm8qnWx6zM5e+CcDpBGRE+G6eOctxELGx6Qs2NnMJJRxmr1Z4ltaz7KBnkHkVVkKMkWNtKjrL2PLqlPWPn7NEXgVxzHNFvWvDPDdss4vdANt+5NoE8xRQZAxAhPIPlS+ZKY1YeQP6BpTkV2Ytmu218dB1vj8GLQXpVUop0rqmAHdzsT5bUVh+u2Sr22nLrk7bxesP26WbD0IPId9zFUFkS5OAwRY7e+0BC6e6oQ/owT2AdQ+1Kr9TaSYCyALPogXlcPaPXrXRqW4/P8lF1zvsZyw95R5kAUP9To4h6UZ5dcOJIYC1CuTkYZURWAb8LmD0tjEXaIXzC1KxjjjnVVuMDGMIL3hupy6IqO/tevpMNDsIr91kv4uApQJ7ydnWAHz5URufawNwLnHmyAgArXc4KC5BbxPoGJ250pAkS4+c3wXQSqtR1rzhvLyHPlIaizzk00u3LVWQBzthucqUp0vEc4PWN3qRtQSpGqoIFs2rOn9qTk2um3lmzPV5vY5eP1zDSB2FtseYh4pm867/djirymrY2tpfhiZvAi57rLIZB8Bnmc+SDQ5etMmpBr4jAKk+mOrlCDhPT9g8Rs78UofFM/0YKdO2shpDJseh93FoaAD6ybpeqSMjZaSk8xM2OnELvDLHuDJa5BldhT4XPTVBRTSq7RCWEE7YhKdnF3utsfU0Z6k0iLq1dzWhi8vICWGzo1eh3v/aHweEEm6yMBfC816AIPezFKD+OLhD6Tjw4XXIJAQevMKVAV8DFwpnqguiBLv+Dv5b4AelwvcDcIdCQrkJgKm7v5I7lUeo92W5q1ikCmqW58ktWBYTjBGEb//n0KkU4R1PoJTSE3hRP6+7EKjG3YeA0umQLYWH2RyUtBQMRCprVmDmesM5Gx5rhailXNGGwZR5vfYf//iP5ncE0QB6Xw0b6j3fF/ZJbmbNTSFW/VtWvRhLCkBeOTGse0FQyK7AUabey29dSa+BN0dATM8VuBOzSQAqUdeRPopRfZIi8XHPPdwCXPpv2FN58tRWYIF1ypIRowTTv+uMrPCVvDNq3K0+Z+5dQHEIXMj7qbYNgRdKcwvAYK224WsRsNF+MhifBfmEysWRBSsw8j8DGIGaAKD4+6xH4LtUTkPsQe+5wOOgSjs1Ak/BvDnbAVTs8SyFCeTmFsE3dZ2HocMwu5Sf5rZrpaIaN98GxE/wHnupOWkPGDOVmbOJmXaUQtCG6A5CT/kuuwfqZ5fwpO69uwAiUI/6PtZQBmpuO7cwyNwAZDoTgb6jNSsUp62146wLWM33jkAdAmNjI2/9gxIgr3blh47vcFYHKO0UjN/efQ6wBoiSV0feZyVR71XcqqzvyUhQDzV5qASi9uA39TVTi4iA/rTXR3dqLrByyxJSMroCY4BTcWGmmyuUq+LA9dW9V7sfFTUoJO1GDLSv0J2s8aHR2zYwct0Fmu8JQkT9q7ZQquIzeUSUQyTFsn2QRzCnLZHBeCoFlXNB3qqAaxElMechDK1JvCi6U+heIQyBYdGRaEYNdwVWqljKUwt9DrY3t9U7L4+Fn/bwj7xK3l8QgSelIppXgdpiZNCGxprgGYXAS/5SEU9pJQrAmGEPFELdQHCuuCdFIaXekav+TPWgVK6saEthyOPn7/Fwk8IvdzwaIBBZsLNXHrPOwVMopaAPn56nhP65cJe19py2ykbE1j2HbI292YBG1Yx2BIUfFBIotCzPwyjA6p773mFtfS95wvsqQLmigrBazI6fu9dTEHYOyigvpZ3I41025VwqR80VMDyhHpzyds4t9NoXv/JuC4Vb4QN5DzbcM5Itq2VOB4p70jaUDgDAURhV5z0xddtvI1EIVzcTqTBJnjCt/Xb7KeaZYv4oGnmpADojk00A4eOMjxIC8KqCWrnhieywDaA0Y6l+5A6ghDVojPLaJAbOdQvHAdubWdah3EPWh2JVVfXUXAtnXoZOlRCfQDHO2tT8LbvZ/CwKs4P9XYJm5M0YBzDfsJstTwEMLgHahqwI+CpX1fR42G40P249Q2etUBqH3uKsAdqsLQBcL1tP7wnWfxtlCL2sznAuAJIY6+h5wcJpVSwrCsK+1KIWT/RZc+fzAL9rnpahNlLryqFem7PQ4k0bHDtpkUSXg0jRzsZOAgDXZB19L6NIe/w5iorp84XoAHR1CfDa5GkCGkfeH627Z/CcTc41YwyorQ66Eh4urS0yz06+3wKQnAa8h3hvHlqYt9lIK8+64Mpcub1KS1IPVEVTlPKUA5BsAlArtbRtICeiuSFr7T9uV24+Ai8OAl6WGD8BLbfb7Y5nrLX3JVtK9rIG+BD5qFdhBXqcbjYVwinVQ95e6fBN+Hl6UbmrahOl9k0KCa97IY2AooovlKenog7v6XeEvEL+pTmzNcZUjqOeoxQH0VU0PQh/qC+tbqmSdxJdAEiXN2tmvoN1LDMmfMtv1uDVpdSw9U9cdU+fVwYjL+Sx040nIWhEXlAZYpqDwsVFwNJUqJHz6oTWssgYFWWwRoCtchVTuXHGVU/WoJpXz8yVQjY0cd3mIm3MLYy+y0InSk1YtP6xK6+G4ZUzqQilDPBSYASMXUQHzVm1mrNteGeX9Wdyo4CxG1bGeBEtrqI7tuShXE/a7aZXbGjkMjJK6R/wHDKxsha16dkm6+8/BfBrtU32fwM55l0LOLupmWsWjff5vHMq/uLzKsZJDFqNJHo9hUhzVcudbfYtmR2Dtm5h6LVxhsuAYXQ0+6uq6P7RM6znFIbuNHSqlCs5zpQS0oucv+m1F2prtLK5bsPjA5bOzKMPAofVP+WPA0IpGPcw5ZLulVKIwgEHr+BAaq5oNICDOgd6SuBXibS8XihnrGyFTv8HmNLfr74nkKX/43tSpoGrWeBpx7+jv1XqvYrloZsAHCS6wpdXTiBJHgoBA8XDpfSkiA89Jy+egGE2V1zJyoup3x1ALNMzPTYX6gE8KV8MEMnclUMTjffb4PAVW1oa4rOgGERr8un631qDXsE/3ZvHnLcAdpu1TQe0wdeljOsIdpWKY3m5stVaBNQAnhDzJoSmopOg5HzXwZVy/+SB0s0V23tBK4fXQGJNXjm1U2APVKntXiY+l4dvfQPLA6ColgVBfpbGOYLJsdhRBLsHUtTK2ZMXKnDjD423wsRTKAblZXBCzO2AuakISKBY4Ph/ABWsuh2sEYCivG/6t9ZydAANKPygFigoail+5Zg5gOLclD+xroaqgAHto97X86TkFSIP1iIAp+amCl/JJY6QYT3y5upGkg2YUTk4E2MNKJSnEKbyzPEZ4+5iPa7AED3t99ni0nXbv7OKIAgqnIu5iE2Nttqt28/C3BMwPUrAK52rWJmqsrsO06GsYdIyTK1cVAnlgZFr1tR2ypOGAy+X8gI3bGj4vJ0691UPB+wAtATqBVLj0Mwzz3zBFhf7WZsSqKExjIvVlZhNTF6z1vZjgJZZ1sz+Q5dal4pEFqNYwLI0UeRi7m2YfBmwlUiPYYkipLeTDpTUJkbW49CYFPAA+6z8nxz0E1z5thDpsKu3vuXPEl2J1hQyUIsZ3a4TT6txOnsN+JCHTx4ZFYrIkg3He6D5JgRWE8C5A1B9iX28bdU1JUortI6i3wlZLNdos+EGwE+3razrGkpVVCsZP+1jDI6r5QtWO4pFXqWju0qPmLG5pUa+jyAGYKiAqrg6B/DpQEG2WqG6ZNsHKk5JA0qW+PcYirzNlaMqXZXrqedJOU6FWqx74AxrCRrLVhWuA6x09p61azef59"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - 1 Token API
        Apis().initJWTToken(first_name: "test11", last_name: "demo11", password: "sharma@123#", email: "rohit@gmail.com",token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk") { returnData, returnError in
            if returnError != nil {
                print("returnError",returnError)
            }else{
                print("returnData = ",returnData)
            }
        }
        
        // MARK: - 2 Initiate Account
        Apis().callApiMethodUpdateValues("eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", "")
        { returnData, returnError in
            if returnError != nil {
                print("returnError",returnError?.user?.detail)
            }else{
                print("returnData = ",returnData)
            }
        }
        
        // MARK: - 3. Workflow Status
        Apis().getWorkFlowStatus("eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNmZjQzZTU4OTkzMzBjNzM3NGQ0YWQxIiwiZW1haWwiOiJxdzFlYTU4c2FAZ21haWwuY29tIiwiaWF0IjoxNjc3NjczNDQ1LCJleHAiOjE2Nzc2NzM0NzV9.yFkIV6CWvdryABqq2y_A1ojauSiLIVSPTRAmUOkb70I", "a13d5a76-d363-4688-925e-c336b0e78723", "") { returnResponse, returnError in
            if returnError != nil {
                if returnError?.statusParse?.detail == nil {
                    print("user",returnError?.user?.detail)
                }else{
                    print("statusParse",returnError?.statusParse?.detail)
                }
            }else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 4. User Details
        Apis().getUserDetail(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNmZjVkYWY4OTkzMzBjNzM3NGQ0YzM4IiwiZW1haWwiOiJxdzFlYWQ3c2FAZ21haWwuY29tIiwiaWF0IjoxNjc3NjgwMDQ3LCJleHAiOjE2Nzc2ODAwNzd9.7_eZOX1N8h9bah7tDyeylhVWmJehtmg2C6DLUPyIvhY", accountId: "7b532c42-abc4-4f06-a131-36cddb92a5d4", sessionId: "123asd2568987hjd254685", email: "qwer57@gmail.com", workflowExecutionId: "cc853ab2-eacd-4e32-8a2f-89d65f5f412d") { returnResponse, returnError in
            
            if returnError != nil {
                print("statusParse",returnError?.parseBody?.detail)
            }else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 5. Front Image
        Apis().getUserFrontImage(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "63a13da8-11c5-459b-ba78-57a418ae95be", accountId: "667b4984-3787-4632-8064-0b2aa735203a") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 6. Back Image
        Apis().getbackImage(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "63a13da8-11c5-459b-ba78-57a418ae95be", accountId: "667b4984-3787-4632-8064-0b2aa735203a") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - .7 Face Image
        Apis().getfaceImage(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "63a13da8-11c5-459b-ba78-57a418a5be", accountId: "667b4984-3787-4632-8064-0b2aa735203a") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 8. LiveNess Image1
        Apis().getUserlivenessImage1(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "546f59b54da-eddf-41b8-9cac-6605472b6688", accountId: "2e1172a6-3ea4-4d24-9a32-836fcf992bfe") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 9. LiveNess Image2
        Apis().getUserlivenessImage2(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "546f59b54da-eddf-41b8-9cac-6605472b6688", accountId: "2e1172a6-3ea4-4d24-9a32-836fcf992bfe") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 10. LiveNess Image3
        Apis().getUserlivenessImage3(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "546f59b54da-eddf-41b8-9cac-6605472b6688", accountId: "2e1172a6-3ea4-4d24-9a32-836fcf992bfe") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 11. LiveNess Image4
        Apis().getUserlivenessImage4(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "546f59b54da-eddf-41b8-9cac-6605472b6688", accountId: "2e1172a6-3ea4-4d24-9a32-836fcf992bfe") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 12. LiveNess Image5
        Apis().getUserlivenessImage5(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "546f59b54da-eddf-41b8-9cac-6605472b6688", accountId: "2e1172a6-3ea4-4d24-9a32-836fcf992bfe") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 13. LiveNess Image6
        Apis().getUserlivenessImage6(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "546f59b54da-eddf-41b8-9cac-6605472b6688", accountId: "2e1172a6-3ea4-4d24-9a32-836fcf992bfe") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // MARK: - 14. Delete account
        Apis().deletAccount(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", accountId: "aad5ccc5-2967-4fc4-ba4a-d50ca2497c28", workflowExecutionId: "", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNjNzhkOGFiNjFkNjhlZTkwMTViMDNhIiwiZW1haWwiOiJxd2VydHRlc3QyMTU1NTVAZ21haWwuY29tIiwiaWF0IjoxNjc0MDIyMjgyLCJleHAiOjE2NzQwMjIzMTJ9.Hn73bM63q5jgbgbeASkwhI5xgHStTv4J9L84nDLSWA") {  returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.user?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        
        // MARK: - 15. Delete All Data
        Apis().deletAccountData(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", accountId: "aad5ccc5-2967-4fc4-ba4a-d50ca2497c82", workflowExecutionId: "57e00317-81e3-4364-bbfb-31859320d07c", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNjNzhkOGFiNjFkNjhlZTkwMTViMDNhIiwiZW1haWwiOiJxd2VydHRlc3QyMTU1NTVAZ21haWwuY29tIiwiaWF0IjoxNjc0MDIyMjgyLCJleHAiOjE2NzQwMjIzMTJ9.Hn73bM63q5jgbgbeASkwhI5xgHStTv4J9L84nDLSWA") {  returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.user?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        
        // MARK: - 16. Kyc Initiate Account
        Apis().kYCInitialiseAccountApi(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", jwtToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQzNTU3MmUxYWE1ZjkyMTY2NjRhNGM3IiwiZW1haWwiOiJ0ZXN0ZWRmcnQyMjA5QGdtYWlsLmNvbSIsImlhdCI6MTY4MTIxNzMyNiwiZXhwIjoxNjgxMjE3MzU2fQ.ddLG5-vx3lv_WbeSjYbxk_Au---iVAhyeLqmtFteuD0", accountId: "71bb6103-0035-4631-952d-3c35e17df683", customerInternalReference: 1, workflowDefinition: ["key": 10010]) { returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.bdy?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        
        // MARK: - 17. Kyc Prepare Data
        Apis().kycPrepareData(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQzNTU3MmUxYWE1ZjkyMTY2NjRhNGM3IiwiZW1haWwiOiJ0ZXN0ZWRmcnQyMjA5QGdtYWlsLmNvbSIsImlhdCI6MTY4MTIxNzMyNiwiZXhwIjoxNjgxMjE3MzU2fQ.ddLG5-vx3lv_WbeSjYbxk_Au---iVAhyeLqmtFteuD0", accountId: "71bb6103-0035-4631-952d-3c35e17df683", workflowExecutionId: "5bda71a1-32a0-4767-9e93-d409afe44b04", credentialId: "3e8bbc07-ef19-4b06-ab35-ef79fc918ed2", firstName: "PUSHPINDER", lastName: "SINGH", dateOfBirth: "1997-12-07") { returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.bdy?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        
        // MARK: - 18. Kyc Put Prepare Data
        Apis().kycPutPrepareData(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQzNTU3MmUxYWE1ZjkyMTY2NjRhNGM3IiwiZW1haWwiOiJ0ZXN0ZWRmcnQyMjA5QGdtYWlsLmNvbSIsImlhdCI6MTY4MTIxNzMyNiwiZXhwIjoxNjgxMjE3MzU2fQ.ddLG5-vx3lv_WbeSjYbxk_Au---iVAhyeLqmtFteuD0", accountId: "71bb6103-0035-4631-952d-3c35e17df683", workflowExecutionId: "5bda71a1-32a0-4767-9e93-d409afe44b04", firstName: "PUSHPINDER", lastName: "SINGH", dateOfBirth: "1997-12-07") { returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.bdy?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        
        // MARK: - 19. Kyc Workflow Status
        Apis().kycWorkflowStatus(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQzNTU3MmUxYWE1ZjkyMTY2NjRhNGM3IiwiZW1haWwiOiJ0ZXN0ZWRmcnQyMjA5QGdtYWlsLmNvbSIsImlhdCI6MTY4MTIxNzMyNiwiZXhwIjoxNjgxMjE3MzU2fQ.ddLG5-vx3lv_WbeSjYbxk_Au---iVAhyeLqmtFteuD0", accountId: "71bb6103-0035-4631-952d-3c35e17df683", workflowExecutionId: "5bda71a1-32a0-4767-9e93-d409afe44b04", firstName: "PUSHPINDER", lastName: "SINGH", dateOfBirth: "1997-12-07") { returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.bdy?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        
        // MARK: - 20. Kyc User Detail
        Apis().kycUserDetail(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQzNTU3MmUxYWE1ZjkyMTY2NjRhNGM3IiwiZW1haWwiOiJ0ZXN0ZWRmcnQyMjA5QGdtYWlsLmNvbSIsImlhdCI6MTY4MTIxNzMyNiwiZXhwIjoxNjgxMjE3MzU2fQ.ddLG5-vx3lv_WbeSjYbxk_Au---iVAhyeLqmtFteuD0", accountId: "71bb6103-0035-4631-952d-3c35e17df683", workflowExecutionId: "5bda71a1-32a0-4767-9e93-d409afe44b04", firstName: "PUSHPINDER", lastName: "SINGH", dateOfBirth: "1997-12-07") { returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.bdy?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        
        // MARK: - 21. Social Media Email
        Apis().getSMAccByEmail(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", jwtToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", email: "abc@gmail.com") { returnResponse,returnError  in
            print("returnError------------",returnError)
            print("returnResponse--------",returnResponse)
        }
        
        // MARK: - 22. Social Media Phone
        Apis().GetSMAccByMobileNo(token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", jwtToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", phoneNo: "9872521456") { returnResponse,returnError in
            if returnError != nil{
                if ((returnError?.user) != nil){
                    print("--User Error-----", returnError?.user?.detail)
                }
                else
                {
                    print("--Body Error---", returnError?.bdy?.detail)
                }
            }
            else{
                if returnResponse?.data?.resParse?.success == false{
                    print("----",returnResponse?.data?.resParse?.error?.message)
                }
                else {
                    print("returnData = ",returnResponse?.data)
                }
            }
        }
        
        // MARK: - 23. Upload Passport Image
       
        Apis().uploadPassport(token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", imgData: imgData) { returnResponse, returnError in
            print("returnError------------",returnError)
            print("returnResponse--------",returnResponse)
        }
        
        // MARK: - 24. Upload Driving Licence
        Apis().uploadDrivingLic(token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", imgData: imgData) { returnResponse, returnError in
            print("returnError------------",returnError)
            print("returnResponse--------",returnResponse)
        }
        
        // MARK: - 25. Upload Id Card Front Image
        Apis().uploadIDCardFrontImage(token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", imgData: imgData) { returnResponse, returnError in
            print("returnError------------",returnError)
            print("returnResponse--------",returnResponse)
        }
        
        // MARK: - 26. Upload Id Card Back Image
        Apis().uploadIDCardBackImage(token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", authToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", imgData: imgData) { returnResponse, returnError in
            print("returnError------------",returnError)
            print("returnResponse--------",returnResponse)
        }
        
        // MARK: - 27  Upload Document
        
        // MARK: - 28- 32 Uploaded Document Data
        
        // Get Passport Image Data
        Apis().getDataOfType(token: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", jwtToken: "11eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apimId: "586cf7c7-6b85-4597-ad30-4b39df96e993", documentType: "Passport") { returnResponse in
            print("returnResponse--------",returnResponse)
        }
        
        //Get Driving License Image Data
        Apis().getDataOfType(token: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", jwtToken: "11eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apimId: "586cf7c7-6b85-4597-ad30-4b39df96e993", documentType: "DrivingLicence") { returnResponse in
            print("returnResponse--------",returnResponse)
        }
        
        //Get Id Card Front Image
        Apis().getDataOfType(token: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", jwtToken: "11eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apimId: "586cf7c7-6b85-4597-ad30-4b39df96e993", documentType: "FrontIDCard") { returnResponse in
            print("returnResponse--------",returnResponse)
        }
        
        //Get Id Card Back Image
        Apis().getDataOfType(token: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", jwtToken: "11eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apimId: "586cf7c7-6b85-4597-ad30-4b39df96e993", documentType: "BackIDCard") { returnResponse in
            print("returnResponse--------",returnResponse)
        }
    }
}


