.class public final Lcom/google/analytics/containertag/proto/Serving$Container;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Container"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Container;


# instance fields
.field public containerId:Ljava/lang/String;

.field public jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field public state:I

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Container;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Container;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->cachedSize:I

    .line 46
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p1, p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$Container;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    .line 54
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Container;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->cachedSize:I

    .line 102
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 62
    const/16 v0, 0x11

    .line 63
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 64
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 65
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    add-int v0, v1, v3

    .line 66
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 67
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 68
    return v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 111
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 115
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    :sswitch_0
    return-object p0

    .line 126
    :sswitch_1
    new-instance v2, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 127
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 131
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    goto :goto_0

    .line 135
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 136
    .local v1, "temp":I
    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 138
    :cond_2
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    goto :goto_0

    .line 140
    :cond_3
    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    goto :goto_0

    .line 145
    .end local v1    # "temp":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    goto :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 76
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 77
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 78
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 83
    return-void
.end method
