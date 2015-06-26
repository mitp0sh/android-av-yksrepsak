.class public final enum Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

.field public static final enum InAnimation:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

.field public static final enum InTransition:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

.field public static final enum Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

.field private static final synthetic a:[Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;


# instance fields
.field private final mEndState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 588
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    const-string v1, "Closed"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 589
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    const-string v1, "InTransition"

    invoke-direct {v0, v1, v3, v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InTransition:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 590
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    const-string v1, "InAnimation"

    invoke-direct {v0, v1, v4, v2}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InAnimation:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 591
    new-instance v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    const-string v1, "Opened"

    invoke-direct {v0, v1, v5, v3}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    .line 587
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Closed:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InTransition:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->InAnimation:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->Opened:Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->a:[Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 596
    iput-boolean p3, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->mEndState:Z

    .line 597
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;
    .locals 1

    .prologue
    .line 587
    const-class v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->a:[Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    invoke-virtual {v0}, [Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;

    return-object v0
.end method


# virtual methods
.method public final isEndState()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->mEndState:Z

    return v0
.end method

.method public final isTransition()Z
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout$SlidingViewState;->isEndState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
