.class public final enum Lcom/kms/AndroidEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DeviceAdminDisabled:Lcom/kms/AndroidEventType;

.field public static final enum DeviceAdminEnabled:Lcom/kms/AndroidEventType;

.field public static final enum GpsDisabled:Lcom/kms/AndroidEventType;

.field public static final enum GpsEnabled:Lcom/kms/AndroidEventType;

.field private static final synthetic a:[Lcom/kms/AndroidEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/kms/AndroidEventType;

    const-string v1, "DeviceAdminDisabled"

    invoke-direct {v0, v1, v2}, Lcom/kms/AndroidEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/AndroidEventType;->DeviceAdminDisabled:Lcom/kms/AndroidEventType;

    .line 13
    new-instance v0, Lcom/kms/AndroidEventType;

    const-string v1, "DeviceAdminEnabled"

    invoke-direct {v0, v1, v3}, Lcom/kms/AndroidEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/AndroidEventType;->DeviceAdminEnabled:Lcom/kms/AndroidEventType;

    .line 18
    new-instance v0, Lcom/kms/AndroidEventType;

    const-string v1, "GpsEnabled"

    invoke-direct {v0, v1, v4}, Lcom/kms/AndroidEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/AndroidEventType;->GpsEnabled:Lcom/kms/AndroidEventType;

    .line 23
    new-instance v0, Lcom/kms/AndroidEventType;

    const-string v1, "GpsDisabled"

    invoke-direct {v0, v1, v5}, Lcom/kms/AndroidEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/AndroidEventType;->GpsDisabled:Lcom/kms/AndroidEventType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kms/AndroidEventType;

    sget-object v1, Lcom/kms/AndroidEventType;->DeviceAdminDisabled:Lcom/kms/AndroidEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/AndroidEventType;->DeviceAdminEnabled:Lcom/kms/AndroidEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/AndroidEventType;->GpsEnabled:Lcom/kms/AndroidEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/AndroidEventType;->GpsDisabled:Lcom/kms/AndroidEventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kms/AndroidEventType;->a:[Lcom/kms/AndroidEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/AndroidEventType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/AndroidEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/AndroidEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/AndroidEventType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/AndroidEventType;->a:[Lcom/kms/AndroidEventType;

    invoke-virtual {v0}, [Lcom/kms/AndroidEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/AndroidEventType;

    return-object v0
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AndroidEvent event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/AndroidEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    return-void
.end method

.method public final newEvent()LjF;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/AndroidEventType;->newEvent(Ljava/lang/Object;)LjF;

    move-result-object v0

    return-object v0
.end method

.method public final newEvent(Ljava/lang/Object;)LjF;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/kms/AndroidEventType;->checkData(Ljava/lang/Object;)V

    .line 33
    new-instance v0, LjF;

    invoke-direct {v0, p0, p1}, LjF;-><init>(Lcom/kms/AndroidEventType;Ljava/lang/Object;)V

    return-object v0
.end method
