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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22/03/2014 
;A bulb of onion,garlic.[shiksharthi]
;प्याज,लहसुन का कंद/ प्याज,लहसुन की कुंठी
(defrule bulb1
(declare (salience 3000))
(id-root ?id bulb)
?mng <-(meaning_to_be_decided ?id) 
(viSeRya-of_saMbanXI ?id ?id1)
(id-word ?id1 onion|garlic)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulb.clp 	bulb1   "  ?id "  kaMxa )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22/03/2014 
;Electric bulb.[oald]
;बिजली का बल्ब
(defrule bulb0
(declare (salience 0))
(id-root ?id bulb)
?mng <-(meaning_to_be_decided ?id) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulb.clp 	bulb0   "  ?id "  balba )" crlf)
)
)

