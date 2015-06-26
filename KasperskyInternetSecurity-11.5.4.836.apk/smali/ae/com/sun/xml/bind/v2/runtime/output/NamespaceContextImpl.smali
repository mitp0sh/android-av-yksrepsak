.class public final Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
.super Ljava/lang/Object;
.source "NamespaceContextImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final defaultNamespacePrefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;


# instance fields
.field public collectionMode:Z

.field private current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

.field private nsUris:[Ljava/lang/String;

.field private final owner:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

.field private prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

.field private prefixes:[Ljava/lang/String;

.field private size:I

.field private final top:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->$assertionsDisabled:Z

    .line 564
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$1;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->defaultNamespacePrefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 3
    .param p1, "owner"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    .line 119
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->defaultNamespacePrefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    .line 128
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->owner:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 130
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-direct {v0, p0, p0, v2, v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$1;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->top:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 132
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "xml"

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method static synthetic access$500(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->owner:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    return-object v0
.end method

.method static synthetic access$600(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    .prologue
    .line 70
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    return v0
.end method

.method static synthetic access$602(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;I)I
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    return p1
.end method

.method static synthetic access$702(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .prologue
    .line 70
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    return-object p1
.end method

.method static synthetic access$800(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    return-object v0
.end method

.method private makeUniquePrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_0
    return-object v0
.end method


# virtual methods
.method public count()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    return v0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "preferedPrefix"    # Ljava/lang/String;
    .param p3, "requirePrefix"    # Z

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 370
    .local v0, "idx":I
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "preferedPrefix"    # Ljava/lang/String;
    .param p3, "requirePrefix"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 156
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    invoke-virtual {v6, p1, p2, p3}, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->getPreferredPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_c

    .line 159
    iget v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_b

    .line 160
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    move v6, v0

    .line 237
    :goto_1
    return v6

    .line 162
    :cond_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    .line 165
    sget-boolean v6, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->defaultPrefixIndex:I
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$100(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)I

    move-result v6

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->oldDefaultNamespaceUriIndex:I
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$200(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)I

    move-result v6

    if-eq v6, v7, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 167
    :cond_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v3, v6, v0

    .line 168
    .local v3, "oldUri":Ljava/lang/String;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->owner:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v2, v6, Lae/com/sun/xml/bind/v2/runtime/NameList;->namespaceURIs:[Ljava/lang/String;

    .line 170
    .local v2, "knownURIs":[Ljava/lang/String;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$300(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)I

    move-result v6

    if-gt v6, v0, :cond_6

    .line 173
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v0

    .line 175
    invoke-virtual {p0, v3, v10}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 178
    .local v5, "subst":I
    array-length v6, v2

    add-int/lit8 v1, v6, -0x1

    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_3

    .line 179
    aget-object v6, v2, v1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 180
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->owner:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->knownUri2prefixIndexMap:[I

    aput v5, v6, v1

    .line 184
    :cond_3
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$400(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 185
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;
    invoke-static {v7}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$400(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v8}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getOuterPeer()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->setTagName(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    move v6, v0

    .line 187
    goto :goto_1

    .line 178
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 192
    .end local v1    # "j":I
    .end local v5    # "subst":I
    :cond_6
    array-length v6, v2

    add-int/lit8 v1, v6, -0x1

    .restart local v1    # "j":I
    :goto_3
    if-ltz v1, :cond_7

    .line 193
    aget-object v6, v2, v1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 194
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # setter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->defaultPrefixIndex:I
    invoke-static {v6, v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$102(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;I)I

    .line 195
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # setter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->oldDefaultNamespaceUriIndex:I
    invoke-static {v6, v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$202(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;I)I

    .line 199
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->owner:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->knownUri2prefixIndexMap:[I

    iget v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    aput v7, v6, v1

    .line 203
    :cond_7
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$400(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 204
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    iget v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;
    invoke-static {v8}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->access$400(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v9}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getOuterPeer()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->setTagName(ILjava/lang/String;Ljava/lang/Object;)V

    .line 207
    :cond_8
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p0, v6, v10}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v6, ""

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_1

    .line 192
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 159
    .end local v1    # "j":I
    .end local v2    # "knownURIs":[Ljava/lang/String;
    .end local v3    # "oldUri":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 214
    :cond_b
    const-string v6, ""

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_1

    .line 217
    .end local v0    # "i":I
    :cond_c
    iget v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_10

    .line 218
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    aget-object v4, v6, v0

    .line 219
    .local v4, "p":Ljava/lang/String;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 220
    if-eqz p3, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e

    :cond_d
    move v6, v0

    .line 221
    goto/16 :goto_1

    .line 224
    :cond_e
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 226
    const/4 p2, 0x0

    .line 217
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 230
    .end local v4    # "p":Ljava/lang/String;
    :cond_10
    if-nez p2, :cond_11

    if-eqz p3, :cond_11

    .line 233
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->makeUniquePrefix()Ljava/lang/String;

    move-result-object p2

    .line 237
    :cond_11
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_1
.end method

.method public force(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param

    .prologue
    .line 244
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 245
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 244
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "prefixIndex"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 339
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 340
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 342
    :goto_1
    return-object v1

    .line 339
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "prefixIndex"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->collectionMode:Z

    if-eqz v2, :cond_1

    .line 351
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_0
    :goto_0
    return-object v1

    .line 353
    :cond_1
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 354
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 353
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getPrefixIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 312
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 313
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    return v0

    .line 312
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 316
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public getPrefixMapper()Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "prefix":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 270
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 272
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 273
    .local v1, "u":[Ljava/lang/String;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 274
    .local v0, "p":[Ljava/lang/String;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    .line 279
    .end local v0    # "p":[Ljava/lang/String;
    .end local v1    # "u":[Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    .line 280
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 281
    const-string p2, ""

    .line 287
    :cond_1
    :goto_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;

    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    aput-object p1, v2, v3

    .line 288
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;

    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    aput-object p2, v2, v3

    .line 290
    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    return v2

    .line 284
    :cond_2
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->makeUniquePrefix()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->top:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->collectionMode:Z

    .line 149
    return-void
.end method

.method public setPrefixMapper(Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;)V
    .locals 0
    .param p1, "mapper"    # Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    sget-object p1, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->defaultNamespacePrefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    .line 138
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    .line 139
    return-void
.end method
