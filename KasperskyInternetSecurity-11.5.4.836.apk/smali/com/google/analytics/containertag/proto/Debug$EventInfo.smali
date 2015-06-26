.class public final Lcom/google/analytics/containertag/proto/Debug$EventInfo;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Debug$EventInfo$EventType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;


# instance fields
.field public containerId:Ljava/lang/String;

.field public containerVersion:Ljava/lang/String;

.field public dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

.field public eventType:I

.field public key:Ljava/lang/String;

.field public macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 150
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 127
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 158
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 159
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->cachedSize:I

    .line 161
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-ne p1, p0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 168
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 169
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    iget v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "size":I
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    if-eq v1, v2, :cond_0

    .line 218
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v1, :cond_4

    .line 234
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v1, :cond_5

    .line 238
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->cachedSize:I

    .line 243
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 179
    const/16 v0, 0x11

    .line 180
    .local v0, "result":I
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    add-int/lit16 v0, v1, 0x20f

    .line 181
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 182
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 183
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 184
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 185
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 187
    return v0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->hashCode()I

    move-result v1

    goto :goto_3

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->hashCode()I

    move-result v1

    goto :goto_4

    .line 186
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 252
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 256
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    :sswitch_0
    return-object p0

    .line 267
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 268
    .local v1, "temp":I
    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 270
    :cond_2
    iput v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    goto :goto_0

    .line 272
    :cond_3
    iput v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    goto :goto_0

    .line 277
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    goto :goto_0

    .line 281
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    goto :goto_0

    .line 285
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    goto :goto_0

    .line 289
    :sswitch_5
    new-instance v2, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 290
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 294
    :sswitch_6
    new-instance v2, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 295
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
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
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;

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
    const/4 v1, 0x1

    .line 192
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    if-eq v0, v1, :cond_0

    .line 193
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v0, :cond_4

    .line 205
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v0, :cond_5

    .line 208
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 210
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 212
    return-void
.end method
