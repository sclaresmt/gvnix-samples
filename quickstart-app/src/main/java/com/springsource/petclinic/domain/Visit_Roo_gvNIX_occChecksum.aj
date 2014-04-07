/*
 * gvNIX. Spring Roo based RAD tool for Conselleria d'Infraestructures
 * i Transport - Generalitat Valenciana
 * Copyright (C) 2010 CIT - Generalitat Valenciana
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.springsource.petclinic.domain;

import java.security.MessageDigest;

import javax.persistence.OptimisticLockException;
import javax.persistence.PostLoad;

import org.springframework.transaction.annotation.Transactional;

/**
 * <p><b>Optimistic Concurrency Control of gvNIX</b></p>
 *
 */
privileged aspect Visit_gvnix_persistence_occ {

    declare precedence: Visit_gvnix_persistence_occ, Visit_Roo_Jpa_ActiveRecord;

    transient static MessageDigest MESSAGE_DIGEST;


    private static MessageDigest getMessageDigest() {
        if (MESSAGE_DIGEST == null) {
            try {
                MESSAGE_DIGEST = MessageDigest.getInstance("md5");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return MESSAGE_DIGEST;
    }


    @Transactional
    public void Visit.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.checkConcurrency(null);
            this.entityManager.remove(this);
        } else {
            Visit attached = this.entityManager.find(Visit.class, this.id);
            this.checkConcurrency(attached);
            this.entityManager.remove(attached);
        }
    }

    @Transactional
    public Visit Visit.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.checkConcurrency(null);
        Visit merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }

    private void Visit.checkConcurrency(Visit attached) {
        if (attached == null){
            attached = this.entityManager.find(Visit.class, this.id);
            if (attached == null) {
			    // TODO Customize this Exception to add more information
                throw new OptimisticLockException(
                    "Visit has been deleted (id: " + this.id + ")");
            }
        }
        if (this.occChekcsum != null && // We haven the old checksum and
            !this.occChekcsum.equals(attached.occChekcsum)) { // checksum is not equals
	    	// TODO Customize this Exception to add more information
	    	throw new OptimisticLockException(
		    	"This Visit has been modified by another user (id: " + this.id + ")");
		}
    }


    @PostLoad
    private void Visit.loadChecksum() {
        if (this.occChekcsum == null) {
            this.occChekcsum = this.checksumDigest();
        }
    }

    private String Visit.checksumDigest() {
        final String nullstr = "__null__";
        final String separator = "#$#";
        StringBuilder sb = new StringBuilder();

	sb.append((description == null ? nullstr : String.valueOf(description)) + separator);
	sb.append((visitDate == null ? nullstr : String.valueOf(visitDate)) + separator);
	sb.append((pet == null ? nullstr : String.valueOf(pet.getId())) + separator);
	sb.append((vet == null ? nullstr : String.valueOf(vet.getId())) + separator);
	sb.append((id == null ? nullstr : String.valueOf(id)) + separator);


        byte[] digest = getMessageDigest().digest(sb.toString().getBytes());

        // TODO optimize this code
        StringBuilder sb2 = new StringBuilder(digest.length * 2);
        for (int i = 0; i < digest.length; i++) {
            sb2.append(Integer.toString((digest[i] & 0xff) + 0x100, 16)
                .substring(1));
        }
        return sb2.toString();
    }
}
