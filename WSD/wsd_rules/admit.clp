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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27/03/2014
;Officials arrived at the spot and admitted the injured people to the SN Emergency Unit.
;मौके पर पहुंचे अधिकारियों ने घायलों को एसएन इमरजेंसी में भर्ती कराया 
(defrule admit1
(declare (salience 3000))
(id-root ?id admit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id2)
(id-word ?id2 emergency)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarwI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  admit.clp 	admit1   "  ?id " BarwI_kara)" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27/03/2014
;Two crash victims were admitted to the local hospital.[oald]
;धमाके के शिकार दो लोगों को स्थानीय अस्पताल में भर्ती किया गया था . 
(defrule admit2
(declare (salience 3000))
(id-root ?id admit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 hospital) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarwI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  admit.clp 	admit2   "  ?id " BarwI_kara)" crlf))
)
;**************************DEFAULT RULES*************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;Don't be afraid to admit to your mistakes.[oald]
;अपनी गलतियों को स्वीकार करने से डरो नहीं 
(defrule admit0
(declare (salience 0))
(id-root ?id admit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  admit.clp 	admit0   "  ?id "  svIkAra_kara )" crlf))
)



