;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)25-jan-2014
;In addition there was to be a special grant of ten lakhs of rupees for hostel accommodation in Calcutta.[gyananidhi]
;साथ ही कलकता में होस्टल में रुकने की व्यवस्था के लिये दस लाख रुपयों का एक विशेष अनुदान होने वाला था .
;Hotel accommodation is included in the price of your holiday.
;आपके अवकाश के मुल्य में होटल में रुकने की व्यवस्था सम्मिलित है 
(defrule accommodation1
(declare (salience 4000))
(id-root ?id accommodation)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukane_kI_vyvasWA))
(assert (id-wsd_viBakwi ?id1 meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accommodation.clp 	accommodation1   "  ?id "  rukane_kI_vyvasWA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_viBakwi   " ?*wsd_dir* "  accommodation.clp 	accommodation1   "  ?id1 "  meM )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)25-jan-2014
;They were forced to reach an accommodation with the rebels.[oald]
;वे विद्रोहियों के साथ समझौते पर पहुँचने के लिये मजबूर किए गये थे . 
(defrule accommodation2
(declare (salience 4000))
(id-root ?id accommodation)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-word ?kri reach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJOwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accommodation.clp 	accommodation2   "  ?id "  samaJOwA )" crlf)
)
)



;*******************DEFAULT RULE****************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)25-jan-2014
(defrule accommodation0
(id-root ?id accommodation)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukane_kI_jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accommodation.clp 	accommodation0   "  ?id "  rukane_kI_jagaha )" crlf))
)

;*****************EXAMPLES***********************************************

;In addition there was to be a special grant of ten lakhs of rupees for hostel accommodation in Calcutta.
;There was no accommodation, no laboratories, no equipment.
;The primary requisite of the University at the time was accommodation for post-graduate classes and a suitable library.
;Rented accommodation.
;Hotel accommodation is included in the price of your holiday.
;The building plans include much needed new office accommodation.
;First-class accommodation is available on all flights.
;More and more travelers are looking for bed and breakfast accommodations in private homes.
;They were forced to reach an accommodation with the rebels.
;The two countries should be persuaded to work towards some sort of mutual accommodation.
