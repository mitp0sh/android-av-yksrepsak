.class public enum Lcom/kms/ActivityLifecycleEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Created:Lcom/kms/ActivityLifecycleEventType;

.field public static final enum Destroyed:Lcom/kms/ActivityLifecycleEventType;

.field public static final enum OnActivityResult:Lcom/kms/ActivityLifecycleEventType;

.field public static final enum Paused:Lcom/kms/ActivityLifecycleEventType;

.field public static final enum Resumed:Lcom/kms/ActivityLifecycleEventType;

.field public static final enum Started:Lcom/kms/ActivityLifecycleEventType;

.field public static final enum Stopped:Lcom/kms/ActivityLifecycleEventType;

.field private static final synthetic a:[Lcom/kms/ActivityLifecycleEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/kms/ActivityLifecycleEventType;

    const-string v1, "Created"

    invoke-direct {v0, v1, v3}, Lcom/kms/ActivityLifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->Created:Lcom/kms/ActivityLifecycleEventType;

    .line 9
    new-instance v0, Lcom/kms/ActivityLifecycleEventType;

    const-string v1, "Started"

    invoke-direct {v0, v1, v4}, Lcom/kms/ActivityLifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->Started:Lcom/kms/ActivityLifecycleEventType;

    .line 10
    new-instance v0, Lcom/kms/ActivityLifecycleEventType;

    const-string v1, "Resumed"

    invoke-direct {v0, v1, v5}, Lcom/kms/ActivityLifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->Resumed:Lcom/kms/ActivityLifecycleEventType;

    .line 12
    new-instance v0, Lcom/kms/ActivityLifecycleEventType$1;

    const-string v1, "OnActivityResult"

    invoke-direct {v0, v1, v6}, Lcom/kms/ActivityLifecycleEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->OnActivityResult:Lcom/kms/ActivityLifecycleEventType;

    .line 22
    new-instance v0, Lcom/kms/ActivityLifecycleEventType;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v7}, Lcom/kms/ActivityLifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->Paused:Lcom/kms/ActivityLifecycleEventType;

    .line 23
    new-instance v0, Lcom/kms/ActivityLifecycleEventType;

    const-string v1, "Stopped"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kms/ActivityLifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->Stopped:Lcom/kms/ActivityLifecycleEventType;

    .line 24
    new-instance v0, Lcom/kms/ActivityLifecycleEventType;

    const-string v1, "Destroyed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kms/ActivityLifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->Destroyed:Lcom/kms/ActivityLifecycleEventType;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kms/ActivityLifecycleEventType;

    sget-object v1, Lcom/kms/ActivityLifecycleEventType;->Created:Lcom/kms/ActivityLifecycleEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/ActivityLifecycleEventType;->Started:Lcom/kms/ActivityLifecycleEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/ActivityLifecycleEventType;->Resumed:Lcom/kms/ActivityLifecycleEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/ActivityLifecycleEventType;->OnActivityResult:Lcom/kms/ActivityLifecycleEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kms/ActivityLifecycleEventType;->Paused:Lcom/kms/ActivityLifecycleEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kms/ActivityLifecycleEventType;->Stopped:Lcom/kms/ActivityLifecycleEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kms/ActivityLifecycleEventType;->Destroyed:Lcom/kms/ActivityLifecycleEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/ActivityLifecycleEventType;->a:[Lcom/kms/ActivityLifecycleEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/ActivityLifecycleEventType$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kms/ActivityLifecycleEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/ActivityLifecycleEventType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/kms/ActivityLifecycleEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/ActivityLifecycleEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/ActivityLifecycleEventType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kms/ActivityLifecycleEventType;->a:[Lcom/kms/ActivityLifecycleEventType;

    invoke-virtual {v0}, [Lcom/kms/ActivityLifecycleEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/ActivityLifecycleEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity lifecycle event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/ActivityLifecycleEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-void
.end method

.method public final newEvent(Landroid/app/Activity;)LjD;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kms/ActivityLifecycleEventType;->newEvent(Landroid/app/Activity;Ljava/lang/Object;)LjD;

    move-result-object v0

    return-object v0
.end method

.method public final newEvent(Landroid/app/Activity;Ljava/lang/Object;)LjD;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p2}, Lcom/kms/ActivityLifecycleEventType;->checkData(Ljava/lang/Object;)V

    .line 34
    new-instance v0, LjD;

    invoke-direct {v0, p1, p0, p2}, LjD;-><init>(Landroid/app/Activity;Lcom/kms/ActivityLifecycleEventType;Ljava/lang/Object;)V

    return-object v0
.end method
