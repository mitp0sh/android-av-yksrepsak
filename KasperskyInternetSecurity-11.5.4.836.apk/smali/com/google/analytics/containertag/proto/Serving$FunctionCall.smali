.class public final Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FunctionCall"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;


# instance fields
.field public function:I

.field public liveOnly:Z

.field public name:I

.field public property:[I

.field public serverSide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 563
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 566
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    .line 569
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    .line 572
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    .line 575
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    .line 560
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 578
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 579
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    .line 580
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    .line 581
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    .line 582
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    .line 585
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 590
    if-ne p1, p0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v1

    .line 591
    :cond_1
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 592
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 593
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 640
    const/4 v5, 0x0

    .line 641
    .local v5, "size":I
    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v6, :cond_0

    .line 642
    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 645
    :cond_0
    const/4 v6, 0x2

    iget v7, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 647
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v6, v6

    if-lez v6, :cond_2

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 650
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 653
    .end local v2    # "element":I
    :cond_1
    add-int/2addr v5, v1

    .line 654
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 656
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v6, :cond_3

    .line 657
    const/4 v6, 0x4

    iget v7, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 660
    :cond_3
    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v6, :cond_4

    .line 661
    const/4 v6, 0x6

    iget-boolean v7, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 664
    :cond_4
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    .line 665
    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    .line 666
    return v5
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 602
    const/16 v1, 0x11

    .line 603
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 609
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    add-int v1, v2, v5

    .line 610
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    add-int v1, v2, v5

    .line 611
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    add-int v1, v5, v2

    .line 612
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v5, :cond_3

    :goto_1
    add-int v1, v2, v3

    .line 613
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    add-int v1, v3, v2

    .line 614
    return v1

    .line 605
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 606
    mul-int/lit8 v2, v1, 0x1f

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    aget v5, v5, v0

    add-int v1, v2, v5

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_2
    move v2, v4

    .line 611
    goto :goto_0

    :cond_3
    move v3, v4

    .line 612
    goto :goto_1

    .line 613
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 7
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 674
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 675
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 679
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_1

    .line 680
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    .line 683
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 685
    :sswitch_0
    return-object p0

    .line 690
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    goto :goto_0

    .line 694
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    goto :goto_0

    .line 698
    :sswitch_3
    const/16 v4, 0x18

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 699
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v1, v4

    .line 700
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 701
    .local v2, "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 703
    :goto_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 704
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 705
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 708
    :cond_2
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_0

    .line 712
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    goto :goto_0

    .line 716
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    goto :goto_0

    .line 675
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x30 -> :sswitch_5
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
    .line 556
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v4, :cond_0

    .line 620
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 622
    :cond_0
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 623
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v4, :cond_1

    .line 624
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 625
    .local v1, "element":I
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v4, :cond_2

    .line 629
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 631
    :cond_2
    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v4, :cond_3

    .line 632
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 634
    :cond_3
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 636
    return-void
.end method
