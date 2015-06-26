.class public final Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaExperimentSupplemental"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;


# instance fields
.field public experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

.field public valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2082
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2085
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2088
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2091
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2082
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2270
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2264
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .locals 1

    .prologue
    .line 2094
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2095
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2096
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    .line 2098
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->cachedSize:I

    .line 2099
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2104
    if-ne p1, p0, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return v1

    .line 2105
    :cond_1
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2106
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2107
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2160
    const/4 v4, 0x0

    .line 2161
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2163
    .local v1, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2167
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_1

    .line 2168
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2169
    .restart local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2173
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-eqz v5, :cond_2

    .line 2174
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2175
    .local v1, "element":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2174
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2179
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2180
    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->cachedSize:I

    .line 2181
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2114
    const/16 v1, 0x11

    .line 2115
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 2121
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 2127
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 2133
    :cond_2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_9

    :goto_0
    add-int v1, v2, v3

    .line 2134
    return v1

    .line 2117
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2118
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 2117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2118
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_2

    .line 2123
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2124
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 2123
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2124
    :cond_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_4

    .line 2129
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2130
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 2129
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2130
    :cond_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->hashCode()I

    move-result v2

    goto :goto_6

    .line 2133
    .end local v0    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .locals 7
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2189
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2190
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2194
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 2195
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    .line 2198
    :cond_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2200
    :sswitch_0
    return-object p0

    .line 2205
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2206
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v5, :cond_3

    move v1, v4

    .line 2207
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2208
    .local v2, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_2

    .line 2209
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2211
    :cond_2
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2212
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 2213
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v5, v1

    .line 2214
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2215
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2206
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v5

    goto :goto_1

    .line 2218
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_4
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v5, v1

    .line 2219
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2223
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2224
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v5, :cond_6

    move v1, v4

    .line 2225
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2226
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_5

    .line 2227
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2229
    :cond_5
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2230
    :goto_4
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 2231
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v5, v1

    .line 2232
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2233
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2230
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2224
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_6
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v5

    goto :goto_3

    .line 2236
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_7
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v5, v1

    .line 2237
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2241
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2242
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-nez v5, :cond_9

    move v1, v4

    .line 2243
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2244
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-eqz v5, :cond_8

    .line 2245
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2247
    :cond_8
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2248
    :goto_6
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 2249
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    aput-object v6, v5, v1

    .line 2250
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2251
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2248
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2242
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_9
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v1, v5

    goto :goto_5

    .line 2254
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_a
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    aput-object v6, v5, v1

    .line 2255
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2190
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 2078
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2139
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v4, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2141
    .local v1, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2144
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v4, :cond_1

    .line 2145
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2146
    .restart local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2149
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-eqz v4, :cond_2

    .line 2150
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2151
    .local v1, "element":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2154
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2156
    return-void
.end method
