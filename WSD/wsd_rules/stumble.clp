;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Sing(singh.jagriti5@gmail.com)
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;########################################################################
;@@@ Added by jagriti(5.3.2014)
;In her nervousness she stumbled over her words.[oald]
; घबराहट में उसने शब्द लडखड़ाकर बोले .   
(defrule stumble0
(declare (salience 5000))
(id-root ?id stumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-at_saMbanXI  ?id ?id1)(kriyA-over_saMbanXI  ?id ?id1))
(id-root ?id1 word|language)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZaKadZAkara_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stumble.clp     stumble0   "  ?id "  ladZaKadZAkara_bola )" crlf))
)
;@@@ Added by jagriti(5.3.2014)
;While going to the market he stumbled upon an old friend.[rajpal]
;बाजार जाते हुए उसका पुराना मित्र उसे अचानक मिल गया . 
(defrule stumble1
(declare (salience 4900))
(id-root ?id stumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-upon_saMbanXI  ?id ?id1)(kriyA-across_saMbanXI  ?id ?id1))
(id-root =(+ ?id 1) upon|across)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) acAnaka_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stumble.clp	stumble1  "  ?id "  " =(+ ?id 1) "  acAnaka_mila_jA )" crlf))
)
;.....default rule....
;@@@ Added by jagriti(5.3.2014)
;The child stumbled and fell.[oald]
;बच्चा लडखड़ा गया और गिर गया . 
(defrule stumble2
(declare (salience 100))
(id-root ?id stumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZaKadZA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stumble.clp     stumble2   "  ?id "  ladZaKadZA_jA )" crlf))
)

