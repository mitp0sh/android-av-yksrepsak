.class public final enum Lcom/kms/updater/gui/AppUpdaterEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum UpdateRequired:Lcom/kms/updater/gui/AppUpdaterEventType;

.field private static final synthetic a:[Lcom/kms/updater/gui/AppUpdaterEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kms/updater/gui/AppUpdaterEventType;

    const-string v1, "UpdateRequired"

    invoke-direct {v0, v1, v2}, Lcom/kms/updater/gui/AppUpdaterEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/updater/gui/AppUpdaterEventType;->UpdateRequired:Lcom/kms/updater/gui/AppUpdaterEventType;

    .line 4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kms/updater/gui/AppUpdaterEventType;

    sget-object v1, Lcom/kms/updater/gui/AppUpdaterEventType;->UpdateRequired:Lcom/kms/updater/gui/AppUpdaterEventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kms/updater/gui/AppUpdaterEventType;->a:[Lcom/kms/updater/gui/AppUpdaterEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/updater/gui/AppUpdaterEventType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/kms/updater/gui/AppUpdaterEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/updater/gui/AppUpdaterEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/updater/gui/AppUpdaterEventType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/kms/updater/gui/AppUpdaterEventType;->a:[Lcom/kms/updater/gui/AppUpdaterEventType;

    invoke-virtual {v0}, [Lcom/kms/updater/gui/AppUpdaterEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/updater/gui/AppUpdaterEventType;

    return-object v0
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App updater event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/updater/gui/AppUpdaterEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    return-void
.end method

.method public final newEvent(Ljava/lang/String;)LwC;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kms/updater/gui/AppUpdaterEventType;->newEvent(Ljava/lang/String;Ljava/lang/Object;)LwC;

    move-result-object v0

    return-object v0
.end method

.method public final newEvent(Ljava/lang/String;Ljava/lang/Object;)LwC;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p2}, Lcom/kms/updater/gui/AppUpdaterEventType;->checkData(Ljava/lang/Object;)V

    .line 19
    new-instance v0, LwC;

    invoke-direct {v0, p1, p0, p2}, LwC;-><init>(Ljava/lang/String;Lcom/kms/updater/gui/AppUpdaterEventType;Ljava/lang/Object;)V

    return-object v0
.end method
