.class final Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
.super Ljava/lang/Object;
.source "NamespaceRemovingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/NamespaceRemovingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringPrefixSlicer"
.end annotation


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    return-object v0
.end method

.method public removePrefix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removePrefixEndingWith(Ljava/lang/String;)Z
    .locals 3
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "i":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    .line 165
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeRepeatingPrefix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 155
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    goto :goto_1

    .line 158
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
