# Workflow Examples

**Contoh implementasi Vibe Coding yang sederhana.**

---

## 🎯 Example 1: To-Do App

### Setup Tim
```markdown
# memory-bank/team.md

| Nama | Tipe | Peran |
|------|------|-------|
| Budi | Manusia | Arsitek |
| Cody | AI | Developer |
| Lisa | Manusia | Tester |
```

### Baby-Step 1: Project Setup
```markdown
# memory-bank/current-work.md

# Baby-Step: Project Foundation

## Tujuan
Setup basic project structure

## Tasks
- [ ] T1: Create React app | Assignee: Budi | Tes: App runs localhost:3000
- [ ] T2: Setup Express server | Assignee: Cody | Tes: GET /api/test returns OK
- [ ] T3: Initialize git | Assignee: Budi | Tes: git status clean

## Status
Progress: 0/3
```

### Implementation
```bash
# Budi (T1)
git commit -m "Feat(Budi): Initialize React app structure

App renders successfully on localhost:3000"

# Cody (T2)
git commit -m "Feat(Cody): Setup Express server

GET /api/test returns success message"

# Budi (T3)
git commit -m "Feat(Budi): Initialize git repository

Added .gitignore for node_modules"
```

---

## 🎯 Example 2: Login Feature

### Baby-Step 2: User Authentication
```markdown
# memory-bank/current-work.md

# Baby-Step: User Login

## Tujuan
Implement login functionality

## Tasks
- [ ] T1: Design login UI | Assignee: Budi | Tes: Form renders properly
- [ ] T2: Create login API | Assignee: Cody | Tes: Returns JWT for valid login
- [ ] T3: Connect UI to API | Assignee: Budi | Tes: Login redirects on success

## Status
Progress: 0/3
```

### AI Prompt Example
```
Halo Cody,

Context: To-Do app login feature
Task: T2 - Create login API endpoint
Requirements:
- POST /api/login
- Input: email, password
- Return JWT token if valid
- Return error if invalid

Please implement and commit.
```

---

## 🔄 Communication Flow

### Human → AI
- Give clear context
- Specify expected outcome
- Include constraints

### AI → Human
- Explain assumptions
- Provide options
- Confirm understanding

### Example
```
Sarah → Team: "Schema designed, see memory-bank/schema.md"
Cody → Sarah: "Should posts have tags field?"
Sarah → Cody: "Yes, max 5 tags"
Cody → Team: "Schema implemented with validation"
```

---

## 📊 Progress Tracking

### Daily Update
```markdown
# memory-bank/progress.md

## 2024-01-20
✅ Baby-Step: Project Foundation - All tasks completed
- Learning: React + Express setup straightforward
- Next: Start authentication feature

## 2024-01-21
⚠️ Baby-Step: User Login - In Progress
- Progress: 2/3 tasks completed
- Blocker: Need JWT secret
```

---

## 💡 Tips

### For Humans
- Be specific in AI prompts
- Review AI work thoroughly
- Provide feedback

### For AI
- Ask clarifying questions
- Document assumptions
- Suggest improvements

### For Team
- Daily check-ins
- Share learnings
- Continuous improvement

---

**Key Learning:** Simple communication + clear ownership = successful collaboration.