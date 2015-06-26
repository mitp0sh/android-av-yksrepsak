.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessControlListHandler"
.end annotation


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private currText:Ljava/lang/StringBuilder;

.field private currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

.field private currentPermission:Lcom/amazonaws/services/s3/model/Permission;

.field private insideACL:Z

.field private owner:Lcom/amazonaws/services/s3/model/Owner;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 798
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    .line 799
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 789
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 791
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 792
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    .line 793
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    .line 794
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currText:Ljava/lang/StringBuilder;

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currText:Ljava/lang/StringBuilder;

    .line 801
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 880
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 816
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 843
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "elementText":Ljava/lang/String;
    const-string v1, "ID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    if-nez v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    .line 874
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currText:Ljava/lang/StringBuilder;

    .line 875
    return-void

    .line 848
    :cond_1
    const-string v1, "DisplayName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    if-nez v1, :cond_2

    .line 849
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_2
    const-string v1, "ID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 853
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/model/Grantee;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_3
    const-string v1, "EmailAddress"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 855
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/model/Grantee;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_4
    const-string v1, "URI"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 862
    invoke-static {v0}, Lcom/amazonaws/services/s3/model/GroupGrantee;->parseGroupGrantee(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GroupGrantee;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    .line 863
    :cond_5
    const-string v1, "DisplayName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 864
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    check-cast v1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 865
    :cond_6
    const-string v1, "Permission"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 866
    invoke-static {v0}, Lcom/amazonaws/services/s3/model/Permission;->parsePermission(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    goto :goto_0

    .line 867
    :cond_7
    const-string v1, "Grant"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 868
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/AccessControlList;->grantPermission(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    .line 869
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    .line 870
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    goto :goto_0

    .line 871
    :cond_8
    const-string v1, "AccessControlList"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    goto/16 :goto_0
.end method

.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v2, 0x0

    .line 820
    const-string v1, "Owner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    new-instance v1, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    const-string v1, "AccessControlList"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    new-instance v1, Lcom/amazonaws/services/s3/model/AccessControlList;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/AccessControlList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 824
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/AccessControlList;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 825
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    goto :goto_0

    .line 826
    :cond_2
    const-string v1, "Grantee"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    const-string v1, "xsi:type"

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->findAttributeValue(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    invoke-static {v1, p4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$400(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "type":Ljava/lang/String;
    const-string v1, "AmazonCustomerByEmail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 829
    new-instance v1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    .line 830
    :cond_3
    const-string v1, "CanonicalUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 831
    new-instance v1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    .line 832
    :cond_4
    const-string v1, "Group"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
