.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BlackList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

.field public static final enum BothLists:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

.field public static final enum Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

.field public static final enum WhiteList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    const-string v1, "BlackList"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->BlackList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    const-string v1, "WhiteList"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->WhiteList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    const-string v1, "BothLists"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->BothLists:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    .line 183
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->BlackList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->WhiteList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->BothLists:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFilterMode(I)Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;
    .locals 2

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_0

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown AS filter mode!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    .line 195
    :goto_0
    return-object v0

    .line 191
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->WhiteList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    goto :goto_0

    .line 193
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->BlackList:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    goto :goto_0

    .line 195
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->BothLists:Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;
    .locals 1

    .prologue
    .line 183
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    return-object v0
.end method
