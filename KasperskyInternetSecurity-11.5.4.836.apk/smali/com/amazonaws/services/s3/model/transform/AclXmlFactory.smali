.class public Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;
.super Ljava/lang/Object;
.source "AclXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertToXml(Lcom/amazonaws/services/s3/model/CanonicalGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 6
    .param p1, "grantee"    # Lcom/amazonaws/services/s3/model/CanonicalGrantee;
    .param p2, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    const-string v0, "Grantee"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "xmlns:xsi"

    aput-object v2, v1, v4

    const-string v2, "xsi:type"

    aput-object v2, v1, v5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    aput-object v3, v2, v4

    const-string v3, "CanonicalUser"

    aput-object v3, v2, v5

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 113
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 114
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 116
    return-object p2
.end method

.method protected convertToXml(Lcom/amazonaws/services/s3/model/EmailAddressGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 6
    .param p1, "grantee"    # Lcom/amazonaws/services/s3/model/EmailAddressGrantee;
    .param p2, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    const-string v0, "Grantee"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "xmlns:xsi"

    aput-object v2, v1, v4

    const-string v2, "xsi:type"

    aput-object v2, v1, v5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    aput-object v3, v2, v4

    const-string v3, "AmazonCustomerByEmail"

    aput-object v3, v2, v5

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 133
    const-string v0, "EmailAddress"

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 134
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 136
    return-object p2
.end method

.method protected convertToXml(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 3
    .param p1, "grantee"    # Lcom/amazonaws/services/s3/model/Grantee;
    .param p2, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 88
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    .end local p1    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->convertToXml(Lcom/amazonaws/services/s3/model/CanonicalGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 90
    .restart local p1    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    :cond_0
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    .end local p1    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->convertToXml(Lcom/amazonaws/services/s3/model/EmailAddressGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    goto :goto_0

    .line 92
    .restart local p1    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    :cond_1
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/GroupGrantee;

    if-eqz v0, :cond_2

    .line 93
    check-cast p1, Lcom/amazonaws/services/s3/model/GroupGrantee;

    .end local p1    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->convertToXml(Lcom/amazonaws/services/s3/model/GroupGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    goto :goto_0

    .line 95
    .restart local p1    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    :cond_2
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Grantee type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected convertToXml(Lcom/amazonaws/services/s3/model/GroupGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 6
    .param p1, "grantee"    # Lcom/amazonaws/services/s3/model/GroupGrantee;
    .param p2, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    const-string v0, "Grantee"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "xmlns:xsi"

    aput-object v2, v1, v4

    const-string v2, "xsi:type"

    aput-object v2, v1, v5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    aput-object v3, v2, v4

    const-string v3, "Group"

    aput-object v3, v2, v5

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 153
    const-string v0, "URI"

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GroupGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 154
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 156
    return-object p2
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/AccessControlList;)[B
    .locals 7
    .param p1, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getOwner()Lcom/amazonaws/services/s3/model/Owner;

    move-result-object v2

    .line 46
    .local v2, "owner":Lcom/amazonaws/services/s3/model/Owner;
    if-nez v2, :cond_0

    .line 47
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Invalid AccessControlList: missing an S3Owner"

    invoke-direct {v4, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_0
    new-instance v3, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 51
    .local v3, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v4, "AccessControlPolicy"

    const-string v5, "xmlns"

    const-string v6, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 52
    const-string v4, "Owner"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 53
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 54
    const-string v4, "ID"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 56
    :cond_1
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 57
    const-string v4, "DisplayName"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 59
    :cond_2
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 60
    const-string v4, "AccessControlList"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/Grant;

    .line 62
    .local v0, "grant":Lcom/amazonaws/services/s3/model/Grant;
    const-string v4, "Grant"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 63
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->convertToXml(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 64
    const-string v4, "Permission"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/Permission;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 65
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 67
    .end local v0    # "grant":Lcom/amazonaws/services/s3/model/Grant;
    :cond_3
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 68
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 70
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v4

    return-object v4
.end method
