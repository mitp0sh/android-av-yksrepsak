.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketLocationHandler"
.end annotation


# instance fields
.field private currText:Ljava/lang/StringBuilder;

.field private location:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 952
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    .line 953
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 948
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    .line 950
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->currText:Ljava/lang/StringBuilder;

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->currText:Ljava/lang/StringBuilder;

    .line 955
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 994
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 995
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 981
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "elementText":Ljava/lang/String;
    const-string v1, "LocationConstraint"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 984
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    .line 989
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->currText:Ljava/lang/StringBuilder;

    .line 990
    return-void

    .line 986
    :cond_1
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 975
    const-string v0, "CreateBucketConfiguration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    :cond_0
    return-void
.end method
