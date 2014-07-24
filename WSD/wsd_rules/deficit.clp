;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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



;Added by Pramila(Banasthali University)
;He has to face a deficit of Rs. 1500/- in order to carry out the work regularly.
;उन्होंने कहा कि नियमित रूप से काम करने के लिए 1500 / -रुपये के घाटे का सामना करना पड़ता है.
;The budget deficit was brought in front of the party.
;बजट घाटा पार्टी के सामने लाया गया था.
(defrule deficit1
(declare (salience 4950))
(id-root ?id deficit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 Rs.|budget|money)
(or(kriyA-object  ?id1 ?id)(kriyA-subject  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deficit.clp 	deficit1   "  ?id "  GAtA )" crlf))
)



;default
;New blood vessels bud out from the already dilated vascular bed to make up the nutritional deficit.
;नई रक्त वाहिकाएं पोषण की कमी को पूरा करने के लिए पहले से ही फैली हुई संवहनी बिस्तर से विकसित होती है .

;When we say that a body is charged, we always refer to this excess charge or deficit of charge.
;जब हम यह कहते हैं कि कोई वस्तु आवेशित है तो हम सदैव ही इस आवेश के आधिक्य अथवा कमी का उल्लेख करते हैं .

(defrule deficit0
(declare (salience 4900))
(id-root ?id deficit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deficit.clp 	deficit0   "  ?id "  kamI )" crlf))
)
