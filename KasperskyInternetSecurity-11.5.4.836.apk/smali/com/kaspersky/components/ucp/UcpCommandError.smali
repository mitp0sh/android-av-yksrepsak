.class public final enum Lcom/kaspersky/components/ucp/UcpCommandError;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ErrorCommandAlreadyInProgress:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorCommandNoAdministrativePrivileges:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorFeatureIsOff:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorFindingDevice:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorFindingDeviceCantGetGpsCoords:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorFindingDeviceNoGpsModule:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorLicenseExpired:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorMakingPhoto:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorMakingPhotoCantTurnOnFrontCamera:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorMakingPhotoNoFrontCameraExists:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorMakingPhotoUploadFailed:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorWipingData:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum ErrorWipingDataNotSupported:Lcom/kaspersky/components/ucp/UcpCommandError;

.field public static final enum UnknownError:Lcom/kaspersky/components/ucp/UcpCommandError;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/UcpCommandError;


# instance fields
.field private final mError:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "UnknownError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->UnknownError:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 10
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorLicenseExpired"

    invoke-direct {v0, v1, v4, v5}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorLicenseExpired:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 11
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorFeatureIsOff"

    invoke-direct {v0, v1, v5, v6}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFeatureIsOff:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 12
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorCommandAlreadyInProgress"

    invoke-direct {v0, v1, v6, v7}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandAlreadyInProgress:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 13
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorCommandNoAdministrativePrivileges"

    invoke-direct {v0, v1, v7, v8}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandNoAdministrativePrivileges:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 14
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorMakingPhoto"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhoto:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 15
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorMakingPhotoNoFrontCameraExists"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoNoFrontCameraExists:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 16
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorMakingPhotoCantTurnOnFrontCamera"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoCantTurnOnFrontCamera:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 17
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorMakingPhotoUploadFailed"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoUploadFailed:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 18
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorWipingData"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorWipingData:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 19
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorWipingDataNotSupported"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorWipingDataNotSupported:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 20
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorFindingDevice"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDevice:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 21
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorFindingDeviceCantGetGpsCoords"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDeviceCantGetGpsCoords:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 22
    new-instance v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    const-string v1, "ErrorFindingDeviceNoGpsModule"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpCommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDeviceNoGpsModule:Lcom/kaspersky/components/ucp/UcpCommandError;

    .line 7
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/kaspersky/components/ucp/UcpCommandError;

    const/4 v1, 0x0

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->UnknownError:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorLicenseExpired:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFeatureIsOff:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandAlreadyInProgress:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandNoAdministrativePrivileges:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhoto:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoNoFrontCameraExists:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoCantTurnOnFrontCamera:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoUploadFailed:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorWipingData:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorWipingDataNotSupported:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDevice:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDeviceCantGetGpsCoords:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDeviceNoGpsModule:Lcom/kaspersky/components/ucp/UcpCommandError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->a:[Lcom/kaspersky/components/ucp/UcpCommandError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/kaspersky/components/ucp/UcpCommandError;->mError:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/UcpCommandError;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/UcpCommandError;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/UcpCommandError;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->a:[Lcom/kaspersky/components/ucp/UcpCommandError;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/UcpCommandError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/UcpCommandError;

    return-object v0
.end method


# virtual methods
.method public final getError()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kaspersky/components/ucp/UcpCommandError;->mError:I

    return v0
.end method
