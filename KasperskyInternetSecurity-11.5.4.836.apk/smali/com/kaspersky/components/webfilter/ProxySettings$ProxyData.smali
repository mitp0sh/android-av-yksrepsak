.class public Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

.field public static final LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

.field private static final serialVersionUID:J = -0x41c8bbdf35588e2eL


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    const-string v1, "127.0.0.1"

    const/16 v2, 0xc38

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->LOCAL:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    .line 70
    new-instance v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->EMPTY:Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I

    .line 78
    return-void

    .line 76
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I

    return v0
.end method

.method static synthetic access$400(Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    if-eqz v2, :cond_3

    .line 90
    check-cast p1, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;

    .line 91
    iget-object v2, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;

    iget-object v3, p1, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I

    iget v3, p1, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/ProxySettings$ProxyData;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
