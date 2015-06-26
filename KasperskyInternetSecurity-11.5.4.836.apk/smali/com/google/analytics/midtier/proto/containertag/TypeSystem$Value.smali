.class public final Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "TypeSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/midtier/proto/containertag/TypeSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;,
        Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# instance fields
.field public boolean_:Z

.field public containsReferences:Z

.field public escaping:[I

.field public functionId:Ljava/lang/String;

.field public integer:J

.field public listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public macroReference:Ljava/lang/String;

.field public mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public string:Ljava/lang/String;

.field public tagReference:Ljava/lang/String;

.field public templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 57
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    .line 69
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 72
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 81
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 87
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 88
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    .line 92
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 93
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 96
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->cachedSize:I

    .line 99
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    instance-of v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 106
    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 107
    .local v0, "other":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iget v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-wide v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iget-wide v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    iget-boolean v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    iget-boolean v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    .line 222
    const/4 v5, 0x0

    .line 223
    .local v5, "size":I
    const/4 v6, 0x1

    iget v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 225
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 226
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 229
    :cond_0
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 231
    .local v2, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x3

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_2

    .line 236
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 237
    .restart local v2    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x4

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_3

    .line 242
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 243
    .restart local v2    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 247
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 248
    const/4 v6, 0x6

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 251
    :cond_4
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 252
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 255
    :cond_5
    iget-wide v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 256
    const/16 v6, 0x8

    iget-wide v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    invoke-static {v6, v7, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 259
    :cond_6
    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v6, :cond_7

    .line 260
    const/16 v6, 0x9

    iget-boolean v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 263
    :cond_7
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v6, v6

    if-lez v6, :cond_9

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_8

    aget v2, v0, v3

    .line 266
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 269
    .end local v2    # "element":I
    :cond_8
    add-int/2addr v5, v1

    .line 270
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 272
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_9
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_a

    .line 273
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 274
    .local v2, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/16 v6, 0xb

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 278
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_a
    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v6, :cond_b

    .line 279
    const/16 v6, 0xc

    iget-boolean v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 282
    :cond_b
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 283
    const/16 v6, 0xd

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 286
    :cond_c
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    .line 287
    iput v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->cachedSize:I

    .line 288
    return v5
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    const/16 v1, 0x11

    .line 125
    .local v1, "result":I
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    add-int/lit16 v1, v2, 0x20f

    .line 126
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_0
    add-int v1, v6, v2

    .line 127
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_a

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    :cond_2
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 146
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v3

    :goto_2
    add-int v1, v6, v2

    .line 147
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iget-wide v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 148
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v2, :cond_e

    move v2, v4

    :goto_3
    add-int v1, v6, v2

    .line 149
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_f

    mul-int/lit8 v1, v1, 0x1f

    .line 155
    :cond_3
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v2, :cond_11

    move v2, v3

    :goto_4
    add-int v1, v6, v2

    .line 156
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-nez v2, :cond_12

    mul-int/lit8 v1, v1, 0x1f

    .line 162
    :cond_4
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v6, :cond_13

    :goto_5
    add-int v1, v2, v4

    .line 163
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_14

    :goto_6
    add-int v1, v2, v3

    .line 164
    return v1

    .line 126
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 129
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 130
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_8
    add-int v1, v6, v2

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 130
    :cond_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_8

    .line 135
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 136
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_a
    add-int v1, v6, v2

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 136
    :cond_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_a

    .line 141
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 142
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_b

    move v2, v3

    :goto_c
    add-int v1, v6, v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 142
    :cond_b
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_c

    .line 145
    .end local v0    # "i":I
    :cond_c
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 146
    :cond_d
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :cond_e
    move v2, v5

    .line 148
    goto/16 :goto_3

    .line 151
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 152
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_10

    move v2, v3

    :goto_e
    add-int v1, v6, v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 152
    :cond_10
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_e

    .line 155
    .end local v0    # "i":I
    :cond_11
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 158
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 159
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    aget v6, v6, v0

    add-int v1, v2, v6

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    :cond_13
    move v4, v5

    .line 162
    goto/16 :goto_5

    .line 163
    :cond_14
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 296
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 297
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 301
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v6, :cond_1

    .line 302
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    .line 305
    :cond_1
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 307
    :sswitch_0
    return-object p0

    .line 312
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 313
    .local v4, "temp":I
    if-eq v4, v8, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x5

    if-eq v4, v6, :cond_2

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    const/4 v6, 0x7

    if-eq v4, v6, :cond_2

    const/16 v6, 0x8

    if-eq v4, v6, :cond_2

    const/16 v6, 0x9

    if-ne v4, v6, :cond_3

    .line 322
    :cond_2
    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    goto :goto_0

    .line 324
    :cond_3
    iput v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    goto :goto_0

    .line 329
    .end local v4    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto :goto_0

    .line 333
    :sswitch_3
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 334
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_5

    move v1, v5

    .line 335
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 336
    .local v2, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_4

    .line 337
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_4
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 340
    :goto_2
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 341
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 342
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 343
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 334
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_5
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v6

    goto :goto_1

    .line 346
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_6
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 347
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 351
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_4
    const/16 v6, 0x22

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 352
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_8

    move v1, v5

    .line 353
    .restart local v1    # "i":I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 354
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_7

    .line 355
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    :cond_7
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 358
    :goto_4
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_9

    .line 359
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 360
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 361
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 352
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_8
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v6

    goto :goto_3

    .line 364
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_9
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 365
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 369
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_5
    const/16 v6, 0x2a

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 370
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_b

    move v1, v5

    .line 371
    .restart local v1    # "i":I
    :goto_5
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 372
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_a

    .line 373
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    :cond_a
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 376
    :goto_6
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_c

    .line 377
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 378
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 379
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 370
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_b
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v6

    goto :goto_5

    .line 382
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_c
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 383
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 387
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    goto/16 :goto_0

    .line 391
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    goto/16 :goto_0

    .line 395
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    goto/16 :goto_0

    .line 399
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    goto/16 :goto_0

    .line 403
    :sswitch_a
    const/16 v6, 0x50

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 404
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v1, v6

    .line 405
    .restart local v1    # "i":I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 406
    .local v2, "newArray":[I
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 408
    :goto_7
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_d

    .line 409
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 410
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 413
    :cond_d
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 417
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_b
    const/16 v6, 0x5a

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 418
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_f

    move v1, v5

    .line 419
    .restart local v1    # "i":I
    :goto_8
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 420
    .local v2, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_e

    .line 421
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    :cond_e
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 424
    :goto_9
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_10

    .line 425
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 426
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 427
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 418
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_f
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v6

    goto :goto_8

    .line 430
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_10
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 431
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 435
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    goto/16 :goto_0

    .line 439
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    goto/16 :goto_0

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
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
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v4, 0x1

    iget v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 170
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 173
    :cond_0
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v4, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 175
    .local v1, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v4, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 180
    .restart local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v4, :cond_3

    .line 184
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 185
    .restart local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 188
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 189
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 191
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 192
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 194
    :cond_5
    iget-wide v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 195
    const/16 v4, 0x8

    iget-wide v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 197
    :cond_6
    iget-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v4, :cond_7

    .line 198
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 200
    :cond_7
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v4, v4

    if-lez v4, :cond_8

    .line 201
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_8

    aget v1, v0, v2

    .line 202
    .local v1, "element":I
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_8
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v4, :cond_9

    .line 206
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 207
    .local v1, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/16 v4, 0xb

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 210
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_9
    iget-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v4, :cond_a

    .line 211
    const/16 v4, 0xc

    iget-boolean v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 213
    :cond_a
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 214
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 216
    :cond_b
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 218
    return-void
.end method
