;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
;#
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
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;@@@ Added by Pramila(Banasthali University)
;A brief discussion on some useful layers of the atmosphere is given in Table 15.3.    ;physics
;सारणी 15.3 में वायुमण्डल की कुछ उपयोगी सतहों का सङ्क्षिप्त विवरण दिया गया है .   
(defrule discussion0
(declare (salience 5000))
(id-root ?id discussion)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discussion.clp 	discussion0   "  ?id " vivaraNa  )" crlf))
)

;@@@ Added by Pramila(Banasthali University)
;Her article is a discussion of the methods used in research.  ;oald
;उसका लेख अनुसंधान में इस्तेमाल किए गए तरीकों पर विचार विमर्श  है.
;We had a discussion with them about the differences between Britain and the US. ;oald
;हमने उनके साथ ब्रिटेन और यू.एस. के बीच मतभेद के बारे में विचार विमर्श किया.
;removed condition '(kriyA-after_saMbanXI  ?id1 ?id)' on 18-02-2014
(defrule discussion1
(declare (salience 5000))
(id-root ?id discussion)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-with_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_vimarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discussion.clp 	discussion1   "  ?id "  vicAra_vimarSa )" crlf))
)

;-------------------default rules------------------------------
;@@@ Added by Pramila(Banasthali University)
;The matter is still under discussion .(= being considered). ;cald 
;मामला अभी भी चर्चा में है.
(defrule discussion2
(declare (salience 4000))
(id-root ?id discussion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discussion.clp 	discussion2   "  ?id "  carcA )" crlf))
)


;@@@ Added by Pramila(Banasthali University)
(defrule discussion3
(declare (salience 3000))
(id-root ?id discussion)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discussion.clp 	discussion3   "  ?id "  carcA )" crlf))
)
