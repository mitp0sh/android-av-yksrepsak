.class public Lcom/amazonaws/services/ec2/model/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private architecture:Ljava/lang/String;

.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private hypervisor:Ljava/lang/String;

.field private imageId:Ljava/lang/String;

.field private imageLocation:Ljava/lang/String;

.field private imageOwnerAlias:Ljava/lang/String;

.field private imageType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ownerId:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private productCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation
.end field

.field private publicValue:Ljava/lang/Boolean;

.field private ramdiskId:Ljava/lang/String;

.field private rootDeviceName:Ljava/lang/String;

.field private rootDeviceType:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private virtualizationType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1240
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1288
    :cond_0
    :goto_0
    return v3

    .line 1241
    :cond_1
    if-eqz p1, :cond_0

    .line 1243
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Image;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1244
    check-cast v0, Lcom/amazonaws/services/ec2/model/Image;

    .line 1246
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Image;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1247
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1249
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1251
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1253
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1255
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1257
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1259
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1261
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1263
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1265
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1267
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-nez v1, :cond_2d

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v4

    if-nez v4, :cond_2e

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1269
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/StateReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1270
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1271
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_32

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1273
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_34

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1275
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1277
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1278
    :cond_11
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    move v1, v2

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_38

    move v4, v2

    :goto_22
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1279
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    :cond_12
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_39

    move v1, v2

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3a

    move v4, v2

    :goto_24
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1281
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    :cond_13
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3b

    move v1, v2

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3c

    move v4, v2

    :goto_26
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1283
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    :cond_14
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3d

    move v1, v2

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3e

    move v4, v2

    :goto_28
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1285
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    :cond_15
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    move v1, v2

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_40

    move v4, v2

    :goto_2a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1287
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_16
    move v3, v2

    .line 1288
    goto/16 :goto_0

    :cond_17
    move v1, v3

    .line 1246
    goto/16 :goto_1

    :cond_18
    move v4, v3

    goto/16 :goto_2

    :cond_19
    move v1, v3

    .line 1248
    goto/16 :goto_3

    :cond_1a
    move v4, v3

    goto/16 :goto_4

    :cond_1b
    move v1, v3

    .line 1250
    goto/16 :goto_5

    :cond_1c
    move v4, v3

    goto/16 :goto_6

    :cond_1d
    move v1, v3

    .line 1252
    goto/16 :goto_7

    :cond_1e
    move v4, v3

    goto/16 :goto_8

    :cond_1f
    move v1, v3

    .line 1254
    goto/16 :goto_9

    :cond_20
    move v4, v3

    goto/16 :goto_a

    :cond_21
    move v1, v3

    .line 1256
    goto/16 :goto_b

    :cond_22
    move v4, v3

    goto/16 :goto_c

    :cond_23
    move v1, v3

    .line 1258
    goto/16 :goto_d

    :cond_24
    move v4, v3

    goto/16 :goto_e

    :cond_25
    move v1, v3

    .line 1260
    goto/16 :goto_f

    :cond_26
    move v4, v3

    goto/16 :goto_10

    :cond_27
    move v1, v3

    .line 1262
    goto/16 :goto_11

    :cond_28
    move v4, v3

    goto/16 :goto_12

    :cond_29
    move v1, v3

    .line 1264
    goto/16 :goto_13

    :cond_2a
    move v4, v3

    goto/16 :goto_14

    :cond_2b
    move v1, v3

    .line 1266
    goto/16 :goto_15

    :cond_2c
    move v4, v3

    goto/16 :goto_16

    :cond_2d
    move v1, v3

    .line 1268
    goto/16 :goto_17

    :cond_2e
    move v4, v3

    goto/16 :goto_18

    :cond_2f
    move v1, v3

    .line 1270
    goto/16 :goto_19

    :cond_30
    move v4, v3

    goto/16 :goto_1a

    :cond_31
    move v1, v3

    .line 1272
    goto/16 :goto_1b

    :cond_32
    move v4, v3

    goto/16 :goto_1c

    :cond_33
    move v1, v3

    .line 1274
    goto/16 :goto_1d

    :cond_34
    move v4, v3

    goto/16 :goto_1e

    :cond_35
    move v1, v3

    .line 1276
    goto/16 :goto_1f

    :cond_36
    move v4, v3

    goto/16 :goto_20

    :cond_37
    move v1, v3

    .line 1278
    goto/16 :goto_21

    :cond_38
    move v4, v3

    goto/16 :goto_22

    :cond_39
    move v1, v3

    .line 1280
    goto/16 :goto_23

    :cond_3a
    move v4, v3

    goto/16 :goto_24

    :cond_3b
    move v1, v3

    .line 1282
    goto/16 :goto_25

    :cond_3c
    move v4, v3

    goto/16 :goto_26

    :cond_3d
    move v1, v3

    .line 1284
    goto/16 :goto_27

    :cond_3e
    move v4, v3

    goto/16 :goto_28

    :cond_3f
    move v1, v3

    .line 1286
    goto/16 :goto_29

    :cond_40
    move v4, v3

    goto/16 :goto_2a
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHypervisor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getImageOwnerAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageOwnerAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualizationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1211
    const/16 v1, 0x1f

    .line 1212
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1214
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1215
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1216
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1217
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1218
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1219
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1220
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1221
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1222
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1223
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1224
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1225
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1226
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1227
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 1228
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 1229
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_f
    add-int v0, v4, v2

    .line 1230
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_10
    add-int v0, v4, v2

    .line 1231
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_11

    move v2, v3

    :goto_11
    add-int v0, v4, v2

    .line 1232
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_12
    add-int v0, v4, v2

    .line 1233
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v3

    :goto_13
    add-int v0, v4, v2

    .line 1234
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    :goto_14
    add-int v0, v2, v3

    .line 1235
    return v0

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1215
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1216
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1217
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1218
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1219
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1220
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1221
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1222
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1223
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1224
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1225
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/StateReason;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1226
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1227
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1228
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 1229
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 1230
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 1231
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 1232
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 1233
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 1234
    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_14
.end method

.method public isPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->architecture:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    .line 895
    :goto_0
    return-void

    .line 892
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 893
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 894
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->description:Ljava/lang/String;

    .line 776
    return-void
.end method

.method public setHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)V
    .locals 1
    .param p1, "hypervisor"    # Lcom/amazonaws/services/ec2/model/HypervisorType;

    .prologue
    .line 1149
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    .line 1150
    return-void
.end method

.method public setHypervisor(Ljava/lang/String;)V
    .locals 0
    .param p1, "hypervisor"    # Ljava/lang/String;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    .line 1115
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setImageLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageLocation"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageLocation:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setImageOwnerAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageOwnerAlias"    # Ljava/lang/String;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageOwnerAlias:Ljava/lang/String;

    .line 706
    return-void
.end method

.method public setImageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageType"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageType:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->kernelId:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->name:Ljava/lang/String;

    .line 742
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ownerId:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->platform:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public setProductCodes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setPublic(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "publicValue"    # Ljava/lang/Boolean;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    .line 370
    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ramdiskId:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public setRootDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceName:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public setRootDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootDeviceType"    # Ljava/lang/String;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceType:Ljava/lang/String;

    .line 814
    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/ImageState;)V
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/ImageState;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImageState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)V
    .locals 0
    .param p1, "stateReason"    # Lcom/amazonaws/services/ec2/model/StateReason;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    .line 668
    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 1040
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    .line 1047
    :goto_0
    return-void

    .line 1044
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1045
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1046
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)V
    .locals 1
    .param p1, "virtualizationType"    # Lcom/amazonaws/services/ec2/model/VirtualizationType;

    .prologue
    .line 997
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    .line 998
    return-void
.end method

.method public setVirtualizationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtualizationType"    # Ljava/lang/String;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    .line 963
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Public: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageOwnerAlias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualizationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hypervisor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    :cond_14
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->architecture:Ljava/lang/String;

    .line 500
    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Image;"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 927
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    .line 934
    :goto_0
    return-object p0

    .line 929
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 930
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 931
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Image;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 909
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 910
    .local v3, "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->description:Ljava/lang/String;

    .line 790
    return-object p0
.end method

.method public withHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 1
    .param p1, "hypervisor"    # Lcom/amazonaws/services/ec2/model/HypervisorType;

    .prologue
    .line 1168
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    .line 1169
    return-object p0
.end method

.method public withHypervisor(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "hypervisor"    # Ljava/lang/String;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    .line 1134
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageId:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public withImageLocation(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "imageLocation"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageLocation:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public withImageOwnerAlias(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "imageOwnerAlias"    # Ljava/lang/String;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageOwnerAlias:Ljava/lang/String;

    .line 722
    return-object p0
.end method

.method public withImageType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "imageType"    # Ljava/lang/String;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageType:Ljava/lang/String;

    .line 534
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->kernelId:Ljava/lang/String;

    .line 574
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->name:Ljava/lang/String;

    .line 756
    return-object p0
.end method

.method public withOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ownerId:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->platform:Ljava/lang/String;

    .line 648
    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Image;"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 460
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    .line 467
    :goto_0
    return-object p0

    .line 462
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 464
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 6
    .param p1, "productCodes"    # [Lcom/amazonaws/services/ec2/model/ProductCode;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Image;->setProductCodes(Ljava/util/Collection;)V

    .line 442
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/ProductCode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 443
    .local v3, "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    :cond_1
    return-object p0
.end method

.method public withPublic(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "publicValue"    # Ljava/lang/Boolean;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    .line 386
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ramdiskId:Ljava/lang/String;

    .line 614
    return-object p0
.end method

.method public withRootDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceName:Ljava/lang/String;

    .line 864
    return-object p0
.end method

.method public withRootDeviceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "rootDeviceType"    # Ljava/lang/String;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceType:Ljava/lang/String;

    .line 830
    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/ImageState;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/ImageState;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImageState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public withStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "stateReason"    # Lcom/amazonaws/services/ec2/model/StateReason;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    .line 682
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Image;"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 1079
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    .line 1086
    :goto_0
    return-object p0

    .line 1081
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1082
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1083
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Image;->setTags(Ljava/util/Collection;)V

    .line 1061
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Tag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1062
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1064
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 1
    .param p1, "virtualizationType"    # Lcom/amazonaws/services/ec2/model/VirtualizationType;

    .prologue
    .line 1016
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    .line 1017
    return-object p0
.end method

.method public withVirtualizationType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0
    .param p1, "virtualizationType"    # Ljava/lang/String;

    .prologue
    .line 981
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    .line 982
    return-object p0
.end method
