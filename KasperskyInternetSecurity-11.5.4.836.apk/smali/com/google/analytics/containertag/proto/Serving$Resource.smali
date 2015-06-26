.class public final Lcom/google/analytics/containertag/proto/Serving$Resource;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private static final TEMPLATE_VERSION_SET_DEFAULT:Ljava/lang/String; = "0"


# instance fields
.field public key:[Ljava/lang/String;

.field public liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field public macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public malwareScanAuthCode:Ljava/lang/String;

.field public oBSOLETEEnableAutoEventTracking:Z

.field public predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public previewAuthCode:Ljava/lang/String;

.field public property:[Lcom/google/analytics/containertag/proto/Serving$Property;

.field public reportingSampleRate:F

.field public resourceFormatVersion:I

.field public rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

.field public supplemental:[Ljava/lang/String;

.field public tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public templateVersionSet:Ljava/lang/String;

.field public usageContext:[Ljava/lang/String;

.field public value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Resource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1348
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1351
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1354
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1357
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1360
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1363
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1366
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1369
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1372
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1382
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1391
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1394
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1397
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1400
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1348
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1911
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1905
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1403
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1404
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1405
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1406
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1407
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1408
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1409
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1410
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1412
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1413
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1415
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1416
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1417
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1418
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1419
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1420
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    .line 1421
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1422
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1427
    if-ne p1, p0, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return v1

    .line 1428
    :cond_1
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1429
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 1430
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v3, :cond_3

    :goto_5
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 1595
    const/4 v5, 0x0

    .line 1596
    .local v5, "size":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 1597
    const/4 v1, 0x0

    .line 1598
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1599
    .local v2, "element":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1598
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1602
    .end local v2    # "element":Ljava/lang/String;
    :cond_0
    add-int/2addr v5, v1

    .line 1603
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 1605
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dataSize":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_2

    .line 1606
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1607
    .local v2, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x2

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1606
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1611
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v6, :cond_3

    .line 1612
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 1613
    .local v2, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v6, 0x3

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1612
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1617
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v2    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v6, :cond_4

    .line 1618
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 1619
    .local v2, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v6, 0x4

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1618
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1623
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v6, :cond_5

    .line 1624
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 1625
    .restart local v2    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1624
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1629
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v6, :cond_6

    .line 1630
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v4, :cond_6

    aget-object v2, v0, v3

    .line 1631
    .restart local v2    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v6, 0x6

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1630
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1635
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_6
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v6, :cond_7

    .line 1636
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    .line 1637
    .local v2, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v6, 0x7

    invoke-static {v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1636
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1641
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v2    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_7
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1642
    const/16 v6, 0x9

    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1645
    :cond_8
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1646
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1649
    :cond_9
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1650
    const/16 v6, 0xc

    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1653
    :cond_a
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1654
    const/16 v6, 0xd

    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1657
    :cond_b
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v6, :cond_c

    .line 1658
    const/16 v6, 0xe

    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1661
    :cond_c
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_d

    .line 1662
    const/16 v6, 0xf

    iget v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v6

    add-int/2addr v5, v6

    .line 1665
    :cond_d
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_f

    .line 1666
    const/4 v1, 0x0

    .line 1667
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_7
    if-ge v3, v4, :cond_e

    aget-object v2, v0, v3

    .line 1668
    .local v2, "element":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1667
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1671
    .end local v2    # "element":Ljava/lang/String;
    :cond_e
    add-int/2addr v5, v1

    .line 1672
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1674
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dataSize":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_f
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v6, :cond_10

    .line 1675
    const/16 v6, 0x11

    iget v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1678
    :cond_10
    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v6, :cond_11

    .line 1679
    const/16 v6, 0x12

    iget-boolean v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1682
    :cond_11
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_13

    .line 1683
    const/4 v1, 0x0

    .line 1684
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_8
    if-ge v3, v4, :cond_12

    aget-object v2, v0, v3

    .line 1685
    .restart local v2    # "element":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1684
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1688
    .end local v2    # "element":Ljava/lang/String;
    :cond_12
    add-int/2addr v5, v1

    .line 1689
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1691
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dataSize":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_13
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1692
    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1693
    return v5
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1451
    const/16 v1, 0x11

    .line 1452
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-nez v2, :cond_9

    mul-int/lit8 v1, v1, 0x1f

    .line 1458
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v2, :cond_b

    mul-int/lit8 v1, v1, 0x1f

    .line 1464
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_d

    mul-int/lit8 v1, v1, 0x1f

    .line 1470
    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v2, :cond_f

    mul-int/lit8 v1, v1, 0x1f

    .line 1476
    :cond_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v2, :cond_11

    mul-int/lit8 v1, v1, 0x1f

    .line 1482
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v2, :cond_13

    mul-int/lit8 v1, v1, 0x1f

    .line 1488
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    .line 1494
    :cond_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v2, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    .line 1500
    :cond_7
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v2, :cond_19

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 1501
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v2, :cond_1a

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1502
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v2, :cond_1b

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 1503
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v2, :cond_1c

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1504
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v2, :cond_1d

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 1505
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 1506
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    :goto_5
    add-int v1, v4, v2

    .line 1507
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v2, :cond_1f

    mul-int/lit8 v1, v1, 0x1f

    .line 1513
    :cond_8
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    add-int v1, v2, v4

    .line 1514
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_21

    :goto_6
    add-int v1, v2, v3

    .line 1515
    return v1

    .line 1454
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1455
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_a

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1455
    :cond_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 1460
    .end local v0    # "i":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1461
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1461
    :cond_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    .line 1466
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1467
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_e

    move v2, v3

    :goto_c
    add-int v1, v4, v2

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1467
    :cond_e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_c

    .line 1472
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1473
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    if-nez v2, :cond_10

    move v2, v3

    :goto_e
    add-int v1, v4, v2

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1473
    :cond_10
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Property;->hashCode()I

    move-result v2

    goto :goto_e

    .line 1478
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1479
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-nez v2, :cond_12

    move v2, v3

    :goto_10
    add-int v1, v4, v2

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1479
    :cond_12
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    goto :goto_10

    .line 1484
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1485
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-nez v2, :cond_14

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1485
    :cond_14
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    goto :goto_12

    .line 1490
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_13
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1491
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-nez v2, :cond_16

    move v2, v3

    :goto_14
    add-int v1, v4, v2

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1491
    :cond_16
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    goto :goto_14

    .line 1496
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_15
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 1497
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    if-nez v2, :cond_18

    move v2, v3

    :goto_16
    add-int v1, v4, v2

    .line 1496
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1497
    :cond_18
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Rule;->hashCode()I

    move-result v2

    goto :goto_16

    .line 1500
    .end local v0    # "i":I
    :cond_19
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1501
    :cond_1a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1502
    :cond_1b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1503
    :cond_1c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1504
    :cond_1d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1506
    :cond_1e
    const/4 v2, 0x2

    goto/16 :goto_5

    .line 1509
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_17
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 1510
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1510
    :cond_20
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_18

    .line 1514
    .end local v0    # "i":I
    :cond_21
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 7
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1701
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1702
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1706
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1707
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    .line 1710
    :cond_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1712
    :sswitch_0
    return-object p0

    .line 1717
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1718
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v1, v5

    .line 1719
    .local v1, "i":I
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1720
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1721
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1722
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2

    .line 1723
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1724
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1722
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1727
    :cond_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_0

    .line 1731
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1732
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v5, :cond_4

    move v1, v4

    .line 1733
    .restart local v1    # "i":I
    :goto_2
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1734
    .local v2, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_3

    .line 1735
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1737
    :cond_3
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1738
    :goto_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 1739
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v5, v1

    .line 1740
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1741
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1738
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1732
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_4
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v5

    goto :goto_2

    .line 1744
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v5, v1

    .line 1745
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1749
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1750
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v5, :cond_7

    move v1, v4

    .line 1751
    .restart local v1    # "i":I
    :goto_4
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1752
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v5, :cond_6

    .line 1753
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1755
    :cond_6
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1756
    :goto_5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 1757
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v6, v5, v1

    .line 1758
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1759
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1756
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1750
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :cond_7
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v1, v5

    goto :goto_4

    .line 1762
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :cond_8
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v6, v5, v1

    .line 1763
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1767
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1768
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v5, :cond_a

    move v1, v4

    .line 1769
    .restart local v1    # "i":I
    :goto_6
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1770
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_9

    .line 1771
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1773
    :cond_9
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1774
    :goto_7
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_b

    .line 1775
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1776
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1777
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1774
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1768
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_a
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v5

    goto :goto_6

    .line 1780
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_b
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1781
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1785
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1786
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v5, :cond_d

    move v1, v4

    .line 1787
    .restart local v1    # "i":I
    :goto_8
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1788
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_c

    .line 1789
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1791
    :cond_c
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1792
    :goto_9
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_e

    .line 1793
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1794
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1795
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1792
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1786
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_d
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v5

    goto :goto_8

    .line 1798
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_e
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1799
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1803
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1804
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v5, :cond_10

    move v1, v4

    .line 1805
    .restart local v1    # "i":I
    :goto_a
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1806
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_f

    .line 1807
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1809
    :cond_f
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1810
    :goto_b
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_11

    .line 1811
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1812
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1813
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1810
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1804
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_10
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v5

    goto :goto_a

    .line 1816
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_11
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1817
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1821
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1822
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v5, :cond_13

    move v1, v4

    .line 1823
    .restart local v1    # "i":I
    :goto_c
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1824
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v5, :cond_12

    .line 1825
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1827
    :cond_12
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1828
    :goto_d
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_14

    .line 1829
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v6, v5, v1

    .line 1830
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1831
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1828
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1822
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_13
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v1, v5

    goto :goto_c

    .line 1834
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_14
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v6, v5, v1

    .line 1835
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1839
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 1843
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 1847
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1851
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    goto/16 :goto_0

    .line 1855
    :sswitch_c
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1856
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1860
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    goto/16 :goto_0

    .line 1864
    :sswitch_e
    const/16 v5, 0x82

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1865
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v1, v5

    .line 1866
    .restart local v1    # "i":I
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1867
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1868
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1869
    :goto_e
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_15

    .line 1870
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1871
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1869
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1874
    :cond_15
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto/16 :goto_0

    .line 1878
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    goto/16 :goto_0

    .line 1882
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    goto/16 :goto_0

    .line 1886
    :sswitch_11
    const/16 v5, 0x9a

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1887
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v1, v5

    .line 1888
    .restart local v1    # "i":I
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1889
    .restart local v2    # "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1890
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1891
    :goto_f
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_16

    .line 1892
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1893
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1891
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1896
    :cond_16
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto/16 :goto_0

    .line 1702
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7d -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x90 -> :sswitch_10
        0x9a -> :sswitch_11
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
    .line 1344
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

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
    .line 1520
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1522
    .local v1, "element":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v4, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1527
    .local v1, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1526
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1530
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v4, :cond_2

    .line 1531
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1532
    .local v1, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1531
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1535
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v4, :cond_3

    .line 1536
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1537
    .local v1, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1536
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1540
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v4, :cond_4

    .line 1541
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1542
    .restart local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1541
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1545
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v4, :cond_5

    .line 1546
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 1547
    .restart local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1546
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1550
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_5
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v4, :cond_6

    .line 1551
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_6
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 1552
    .local v1, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1551
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1555
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_6
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1556
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1558
    :cond_7
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1559
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1561
    :cond_8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1562
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1564
    :cond_9
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1565
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1567
    :cond_a
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v4, :cond_b

    .line 1568
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1570
    :cond_b
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_c

    .line 1571
    const/16 v4, 0xf

    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1573
    :cond_c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1574
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_7
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 1575
    .local v1, "element":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1574
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1578
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_d
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v4, :cond_e

    .line 1579
    const/16 v4, 0x11

    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1581
    :cond_e
    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v4, :cond_f

    .line 1582
    const/16 v4, 0x12

    iget-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1584
    :cond_f
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 1585
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_8
    if-ge v2, v3, :cond_10

    aget-object v1, v0, v2

    .line 1586
    .restart local v1    # "element":Ljava/lang/String;
    const/16 v4, 0x13

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1585
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1589
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_10
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1591
    return-void
.end method
