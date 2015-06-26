.class public Lcom/amazonaws/services/s3/internal/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field sb:Ljava/lang/StringBuilder;

.field tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazonaws/services/s3/internal/XmlWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 114
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 139
    const/4 v1, 0x0

    .line 145
    .local v1, "escape":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 146
    if-ge v4, v3, :cond_0

    .line 147
    invoke-virtual {p2, p1, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v4, v3, 0x1

    .line 113
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "escape":Ljava/lang/String;
    :sswitch_0
    const-string v1, "&#9;"

    .line 119
    .restart local v1    # "escape":Ljava/lang/String;
    goto :goto_1

    .line 121
    .end local v1    # "escape":Ljava/lang/String;
    :sswitch_1
    const-string v1, "&#10;"

    .line 122
    .restart local v1    # "escape":Ljava/lang/String;
    goto :goto_1

    .line 124
    .end local v1    # "escape":Ljava/lang/String;
    :sswitch_2
    const-string v1, "&#13;"

    .line 125
    .restart local v1    # "escape":Ljava/lang/String;
    goto :goto_1

    .line 127
    .end local v1    # "escape":Ljava/lang/String;
    :sswitch_3
    const-string v1, "&amp;"

    .line 128
    .restart local v1    # "escape":Ljava/lang/String;
    goto :goto_1

    .line 130
    .end local v1    # "escape":Ljava/lang/String;
    :sswitch_4
    const-string v1, "&quote;"

    .line 131
    .restart local v1    # "escape":Ljava/lang/String;
    goto :goto_1

    .line 133
    .end local v1    # "escape":Ljava/lang/String;
    :sswitch_5
    const-string v1, "&lt;"

    .line 134
    .restart local v1    # "escape":Ljava/lang/String;
    goto :goto_1

    .line 136
    .end local v1    # "escape":Ljava/lang/String;
    :sswitch_6
    const-string v1, "&gt;"

    .line 137
    .restart local v1    # "escape":Ljava/lang/String;
    goto :goto_1

    .line 154
    .end local v0    # "ch":C
    .end local v1    # "escape":Ljava/lang/String;
    :cond_2
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 155
    :cond_3
    return-void

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x3c -> :sswitch_5
        0x3e -> :sswitch_6
    .end sparse-switch
.end method

.method private writeAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method


# virtual methods
.method public end()Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 3

    .prologue
    .line 67
    sget-boolean v1, Lcom/amazonaws/services/s3/internal/XmlWriter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    return-object p0
.end method

.method public getBytes()[B
    .locals 3

    .prologue
    .line 74
    sget-boolean v1, Lcom/amazonaws/services/s3/internal/XmlWriter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-object p0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->writeAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-object p0
.end method

.method public start(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    array-length v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    aget-object v1, p2, v0

    aget-object v2, p3, v0

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->writeAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 88
    return-object p0
.end method
