.class public final Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RuleEvaluationStepInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;


# instance fields
.field public enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 809
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 812
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 806
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 948
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 816
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->cachedSize:I

    .line 819
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 824
    if-ne p1, p0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v1

    .line 825
    :cond_1
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 826
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 827
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 868
    const/4 v4, 0x0

    .line 869
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-eqz v5, :cond_0

    .line 870
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 871
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 875
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_1

    .line 876
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 877
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 881
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    .line 882
    iput v4, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->cachedSize:I

    .line 883
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 833
    const/16 v1, 0x11

    .line 834
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 846
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_6

    :goto_0
    add-int v1, v2, v3

    .line 847
    return v1

    .line 836
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 837
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    :cond_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->hashCode()I

    move-result v2

    goto :goto_2

    .line 842
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 843
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 843
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v2

    goto :goto_4

    .line 846
    .end local v0    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .locals 7
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 891
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 892
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 896
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 897
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    .line 900
    :cond_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 902
    :sswitch_0
    return-object p0

    .line 907
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 908
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-nez v5, :cond_3

    move v1, v4

    .line 909
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 910
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-eqz v5, :cond_2

    .line 911
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    :cond_2
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 914
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 915
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>()V

    aput-object v6, v5, v1

    .line 916
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 917
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 908
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    :cond_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    array-length v1, v5

    goto :goto_1

    .line 920
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    :cond_4
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>()V

    aput-object v6, v5, v1

    .line 921
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 925
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 926
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v5, :cond_6

    move v1, v4

    .line 927
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 928
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_5

    .line 929
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 931
    :cond_5
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 932
    :goto_4
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 933
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 934
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 935
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 932
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 926
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_6
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v1, v5

    goto :goto_3

    .line 938
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_7
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 939
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 892
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 802
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

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
    .line 852
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-eqz v4, :cond_0

    .line 853
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 854
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 853
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v4, :cond_1

    .line 858
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 859
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 858
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 862
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 864
    return-void
.end method
