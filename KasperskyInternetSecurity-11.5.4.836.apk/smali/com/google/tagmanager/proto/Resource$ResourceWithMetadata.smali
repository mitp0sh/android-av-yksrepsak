.class public final Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/proto/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceWithMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;


# instance fields
.field public resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field public supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

.field public timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    sput-object v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->EMPTY_ARRAY:[Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    .line 16
    iput-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 19
    iput-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    .line 23
    iput-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 24
    iput-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 25
    iput-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->cachedSize:I

    .line 27
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p1, p0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    instance-of v3, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .line 35
    .local v0, "other":Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    iget-wide v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    iget-wide v5, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    iget-object v4, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    invoke-static {v1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-eqz v1, :cond_1

    .line 73
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->cachedSize:I

    .line 78
    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 42
    const/16 v0, 0x11

    .line 43
    .local v0, "result":I
    iget-wide v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    iget-wide v5, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit16 v0, v1, 0x20f

    .line 44
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 45
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 46
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 47
    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->hashCode()I

    move-result v1

    goto :goto_1

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .locals 3
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 87
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 91
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :sswitch_0
    return-object p0

    .line 102
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    goto :goto_0

    .line 106
    :sswitch_2
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 107
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 111
    :sswitch_3
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 112
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 53
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 61
    return-void
.end method